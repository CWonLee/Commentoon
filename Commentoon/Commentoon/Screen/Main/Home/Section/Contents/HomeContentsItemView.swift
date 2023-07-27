//
//  HomeContentsItemView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/03/26.
//

import SwiftUI
import Kingfisher

struct HomeContentsItemView: View {
    private let model: ProductModel?
    private let itemWidth: CGFloat = 119
    
    init(model: ProductModel?) {
        self.model = model
    }
    
    var body: some View {
        VStack {
            KFImageView(url: model?.thumbUrl ?? "")
                .frame(width: itemWidth, height: 125, alignment: .center)
                .cornerRadius(20)
            Spacer().frame(height: 4)
            HStack {
                Spacer().frame(width: 4)
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundColor(Color(asset: Asset.Color.bluePointColor))
                    .frame(width: 13, height: 13)
                Spacer().frame(width: 2)
                Text(String(format: "%.1f", model?.averageScore ?? 0.0))
                    .lineLimit(1)
                    .foregroundColor(.black)
                    .font(.system(size: 12, weight: .regular))
                    .frame(height: 12, alignment: .top)
                Spacer()
            }
            .frame(height: 13)
            Spacer().frame(height: 4)
            HStack {
                Spacer().frame(width: 4)
                Text(model?.title ?? "")
                    .lineLimit(1)
                    .foregroundColor(.black)
                    .font(.system(size: 14, weight: .regular))
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: itemWidth - 4, alignment: .leading)
            }
        }
    }
}
