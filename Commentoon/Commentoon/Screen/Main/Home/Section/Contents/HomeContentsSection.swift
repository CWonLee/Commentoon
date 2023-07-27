//
//  HomeContentsSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/03/26.
//

import SwiftUI

struct HomeContentsSection: View {
    private let model: HomeTabSlotModel?
    @State private var itemViewHeights: [CGFloat] = Array(repeating: 0, count: 10)
    private var maxHeight: CGFloat {
        itemViewHeights.max() ?? 0
    }
    private let itemViewWidth: CGFloat = 119
    
    init(model: HomeTabSlotModel?) {
        self.model = model
    }
    
    var body: some View {
        VStack {
            CommonSectionHeaderView(model?.title ?? "")
                .frame(height: 24)
            Spacer().frame(height: 8)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Spacer().frame(width: 16)
                    ForEach(model?.productList ?? [], id: \.uuid) { product in
                        NavigationLink(destination: DetailWorkView(productId: product.id ?? 0)) {
                            HomeContentsItemView(model: product)
                                .frame(width: itemViewWidth)
                        }
                        Spacer().frame(width: 16)
                    }
                }
            }
            Spacer().frame(height: 25)
        }
    }
}
