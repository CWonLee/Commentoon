//
//  HomeHeaderSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/03/26.
//

import SwiftUI
import Kingfisher

struct HomeHeaderSection: View {
    let model: [ProductModel]
    
    init(model: [ProductModel]) {
        self.model = model
    }
    
    var body: some View {
        GeometryReader { proxy in
            TabView {
                ForEach(model, id: \.self) { product in
                    KFImageView(url: product.thumbUrl ?? "")
                        .frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
    }
}
