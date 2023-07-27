//
//  HomeViewModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/07/26.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var homeTabModel: HomeTabModel?
    
    func requestAPI() {
        getHomeTab()
    }
    
    private func getHomeTab() {
        APIManager.request(name: "GetHomeTab")
            .responseModel(model: HomeTabModel.self) { [weak self] result in
                switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self?.homeTabModel = response
                    }
                case .failure(let error):
                    print("error : \(error)")
                }
            }
    }
}
