//
//  DetailWorkView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/05/17.
//

import SwiftUI


struct DetailWorkView: View {
    @ObservedObject private var viewModel: DetailWorkViewModel
    
    init (productId: Int) {
        viewModel = DetailWorkViewModel(productId: productId)
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                DetailWorkHeaderSection(viewModel: viewModel)
                Spacer().frame(height: 32)
                DetailWorkScoreSection(viewModel: viewModel)
                Spacer().frame(height: 12)
                DetailWorkMyReviewTitleView()
                DetailWorkReviewItemView(model: nil, topPadding: 6)
                Rectangle().frame(height: 4).foregroundColor(Color(asset: Asset.Color.grayStroke))
                
                if let reviewModels = viewModel.reviewModels {
                    ForEach(reviewModels, id: \.self) { model in
                        DetailWorkReviewItemView(model: model)
                        Rectangle().frame(height: 1).foregroundColor(Color(asset: Asset.Color.grayStroke))
                            .padding([.leading, .trailing], 20)
                    }
                }
                
            }
        }
        .onAppear {
            viewModel.requestAPI()
        }
        .toolbar(.hidden)
    }
}
