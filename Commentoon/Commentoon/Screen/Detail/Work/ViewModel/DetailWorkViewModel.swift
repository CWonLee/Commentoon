//
//  DetailWorkViewModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/20.
//

import Foundation

class DetailWorkViewModel: ObservableObject {
    private let productId: Int
    @Published var productModel: ProductModel?
    @Published var reviewModels: [ReviewModel]?
    
    init(productId: Int) {
        self.productId = productId
    }
    
    func requestAPI() {
        getProduct()
        getReview()
    }
    
    private func getProduct() {
        APIManager.request(name: "GetProduct")
            .path(["product_id": "\(self.productId)"])
            .responseModel(model: ProductModel.self) { [weak self] result in
                switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self?.productModel = response
                        print("@@@@ \(response)")
                    }
                case .failure(let error):
                    print("error : \(error)")
                }
            }
    }
    
    private func getReview() {
        APIManager.request(name: "GetAllReviewFromProduct")
            .path(["product_id": "\(self.productId)"])
            .responseModel(model: [ReviewModel].self) { [weak self] result in
                switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self?.reviewModels = response
                    }
                case .failure(let error):
                    print("error: \(error)")
                }
            }
    }
}
