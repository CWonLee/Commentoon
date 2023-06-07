//
//  APIManager.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/07.
//

import Foundation

struct TypeHolder<T> { }

class APIRequestBuilder {
    let apiName: String
    var pathVariables: [String: String] = [:]
    var parameters: [String: String] = [:]

    init(apiName: String) {
        self.apiName = apiName
    }

    func path(_ pathVariables: [String: String]) -> Self {
        self.pathVariables = pathVariables
        return self
    }

    func parameters(_ parameters: [String: String]) -> Self {
        self.parameters = parameters
        return self
    }

    func responseModel<T: Decodable>(model: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        APIManager.shared.apiRequest(apiName: apiName, pathVariables: pathVariables, parameters: parameters, typeHolder: TypeHolder<T>(), completion: completion)
    }
}

class APIManager {
    static let shared = APIManager()

    private let baseUrl: String
    private let apiList: [String: [String: String]]

    private init() {
        guard let path = Bundle.main.path(forResource: "APIList", ofType: "plist") else {
            fatalError("APIList.plist not found.")
        }

        guard let dict = NSDictionary(contentsOfFile: path) as? [String: AnyObject] else {
            fatalError("Unable to read APIList.plist.")
        }

        guard let baseUrl = dict["baseUrl"] as? String else {
            fatalError("baseUrl not found in APIList.plist.")
        }

        guard let apiList = dict["apiList"] as? [String: [String: String]] else {
            fatalError("apiList not found in APIList.plist.")
        }

        self.baseUrl = baseUrl
        self.apiList = apiList
    }

    func apiRequest<T: Decodable>(apiName: String, pathVariables: [String: String]? = nil, parameters: [String: String]? = nil, typeHolder: TypeHolder<T>, completion: @escaping (Result<T, Error>) -> Void) {
        guard let apiInfo = apiList[apiName] else {
            completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "API name not found in plist"])))
            return
        }

        var apiPath = apiInfo["path"] ?? ""
        pathVariables?.forEach { key, value in
            apiPath = apiPath.replacingOccurrences(of: "{\(key)}", with: value)
        }

        print("apiPath : \(apiPath)")
        var urlComponents = URLComponents(string: "\(baseUrl)\(apiPath)")
        
        if let parameters = parameters {
            urlComponents?.queryItems = parameters.map {
                URLQueryItem(name: $0.key, value: $0.value)
            }
        }

        guard let url = urlComponents?.url else {
            completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"])))
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = apiInfo["method"] ?? "GET"

        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data returned from server"])))
                return
            }

            do {
                let decoder = JSONDecoder()
                let responseObject = try decoder.decode(T.self, from: data)
                completion(.success(responseObject))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }

    static func request(name: String) -> APIRequestBuilder {
        return APIRequestBuilder(apiName: name)
    }
}
