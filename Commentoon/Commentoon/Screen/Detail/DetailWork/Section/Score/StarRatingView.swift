//
//  StarView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/09.
//

import SwiftUI

struct StarRatingView: View {
    var rating: Float

    var body: some View {
        let stars = HStack(spacing: 2) {
            ForEach(0..<5, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 14, height: 14)
                    .foregroundColor(Color(asset: Asset.Color.gray002))
            }
        }

        stars.overlay(
            GeometryReader { g in
                let width = CGFloat(rating / 5) * g.size.width
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: width)
                        .foregroundColor(Color(asset: Asset.Color.yellowStar))
                }
            }
            .mask(stars)
        )
    }
}
