//
//  DetailWorkViewModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/20.
//

import Foundation

class DetailWorkViewModel: ObservableObject {
    private let productId: Int
    @Published var model: ProductModel?
    
    init(productId: Int) {
        self.productId = productId
    }
    
    func getProduct() {
        APIManager.request(name: "GetProduct")
            .path(["product_id": "\(self.productId)"])
            .responseModel(model: ProductModel.self) { [weak self] result in
                switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self?.model = response
                        print(response.thumbUrl)
                    }
                case .failure(let error):
                    print("error : \(error)")
                }
            }
    }
}
