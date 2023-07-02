//
//  DetailWorkHeaderSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/05/17.
//

import SwiftUI
import Kingfisher

struct DetailWorkHeaderSection: View {
    @ObservedObject private var viewModel: DetailWorkViewModel
    
    init(viewModel: DetailWorkViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            KFImageView(url: viewModel.productModel?.thumbUrl ?? "")
                .frame(height: 466, alignment: .center)
            Spacer().frame(height: 16)
            Text(viewModel.productModel?.title ?? "")
                .padding([.leading, .trailing], 20)
                .foregroundColor(.black)
                .font(.system(size: 22, weight: .regular))
                .lineLimit(nil)
            Spacer().frame(height: 4)
            Text("작가이름")
                .padding([.leading, .trailing], 20)
                .foregroundColor(.black)
                .font(.system(size: 11, weight: .regular))
                .lineLimit(nil)
            Spacer().frame(height: 16)
            Text(viewModel.productModel?.introText ?? "")
                .padding([.leading, .trailing], 20)
                .foregroundColor(Color(asset: Asset.Color.gray004))
                .font(.system(size: 13, weight: .regular))
                .lineLimit(nil)
        }
    }
}
