//
//  HomeContentsItemView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/03/26.
//

import SwiftUI
import Kingfisher

struct HomeContentsItemView: View {
    private let itemWidth: CGFloat = 119
    
    var body: some View {
        VStack {
            KFImage(URL(string: "https://image.yes24.com/goods/117243156/XL"))
                .retry(maxCount: 3, interval: .seconds(5))
                .resizable()
                .frame(width: itemWidth, height: 125, alignment: .center)
                .cornerRadius(20)
                .clipped()
            Spacer().frame(height: 4)
            HStack {
                Spacer().frame(width: 4)
                Image("icStar").frame(width: 13, height: 13)
                Spacer().frame(width: 2)
                Text("4.5")
                    .lineLimit(1)
                    .foregroundColor(.black)
                    .font(.system(size: 12, weight: .regular))
                    .frame(height: 12, alignment: .top)
                Spacer()
            }
            .frame(height: 13)
            Spacer().frame(height: 1)
            HStack {
                Spacer().frame(width: 4)
                Text("전지적 독자 시점 전지적 독자 시점 전지적 독자 시점 전지적 독자 시점")
                    .foregroundColor(.black)
                    .font(.system(size: 14, weight: .regular))
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: itemWidth - 4, alignment: .leading)
            }
        }
    }
}

struct HomeContentsItemView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentsItemView()
    }
}