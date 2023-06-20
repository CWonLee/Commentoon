//
//  DetailWorkScoreSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/09.
//

import SwiftUI

struct DetailWorkScoreSection: View {
    @ObservedObject private var viewModel: DetailWorkViewModel
    
    init(viewModel: DetailWorkViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            DetailWorkScoreSectionHeaderView()
            
            HStack(spacing: 0) {
                Spacer()
                VStack(spacing: 0) {
                    Spacer()
                    Text(String(format: "%.1f", viewModel.model?.averageScore ?? 0.0))
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                    Spacer().frame(height: 10)
                    StarRatingView(rating: viewModel.model?.averageScore ?? 0.0)
                    Spacer().frame(height: 8)
                    Text("\(viewModel.model?.reviewCount ?? 0)개의 리뷰")
                        .font(.system(size: 12))
                        .foregroundColor(Color(asset: Asset.Color.gray004))
                    Spacer()
                }
                Spacer().frame(width: 36)
                VStack(spacing: 3) {
                    ForEach(stride(from: 5, to: 0, by: -1).reversed(), id: \.self) { index in
                        GraphView(progress: viewModel.model?.scoreGraph?[5-index] ?? 0, index: index)
                    }
                }
                Spacer()
            }
            .frame(height: 108)
            .background(Color(asset: Asset.Color.grayBg))
            .cornerRadius(15)
            .padding([.leading, .trailing], 20)
            
        }
    }
}
