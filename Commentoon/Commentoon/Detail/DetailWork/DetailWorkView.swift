//
//  DetailWorkView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/05/17.
//

import SwiftUI

struct ProductModel: Codable {
    let id: Int?
    let title: String?
    let thumbUrl: String?
}

struct DetailWorkView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                DetailWorkHeaderSection()
            }
        }
        .onAppear {
            APIManager.request(name: "GetProduct")
                .path(["product_id": "1"])
                .responseModel(model: ProductModel.self) { result in
                    switch result {
                    case .success(let response):
                        print("response : \(response)")
                    case .failure(let error):
                        print("error : \(error)")
                    }
                }
        }
        .toolbar(.hidden)
    }
}
