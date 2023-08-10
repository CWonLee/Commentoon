//
//  MyViewModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/08/10.
//

import Foundation

class MyViewModel: ObservableObject {
    @Published var meModel: MeModel?
    
    func requestAPI() {
        getMe()
    }
    
    private func getMe() {
        APIManager.request(name: "GetMe")
            .headers(["Authorization": "Bearer \(CTUserDefaults.shared.accessToken)"])
            .responseModel(model: MeModel.self) { [weak self] result in
                switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self?.meModel = response
                    }
                case .failure(let error):
                    print("error : \(error)")
                }
            }
    }
}
