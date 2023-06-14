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
                Spacer().frame(height: 32)
                DetailWorkScoreSection()
                Spacer().frame(height: 12)
                DetailWorkMyReviewTitleView()
                DetailWorkReviewItemView(topPadding: 6)
                Rectangle().frame(height: 4).foregroundColor(Color(asset: Asset.Color.grayStroke))
                
                ForEach(0..<6) { _ in
                    DetailWorkReviewItemView()
                    Rectangle().frame(height: 1).foregroundColor(Color(asset: Asset.Color.grayStroke))
                        .padding([.leading, .trailing], 20)
                }
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
