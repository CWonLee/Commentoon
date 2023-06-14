//
//  MyReviewItemView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/05/10.
//

import SwiftUI
import Kingfisher

struct MyReviewItemView: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 14)
            HStack {
                Spacer().frame(width: 16)
                KFImage(URL(string: "https://image.yes24.com/goods/117243156/XL"))
                    .retry(maxCount: 3, interval: .seconds(5))
                    .resizable()
                    .frame(width: 100, height: 141, alignment: .center)
                    .cornerRadius(18)
                    .clipped()
                Spacer().frame(width: 11)
                VStack {
                    Spacer().frame(height: 5)
                    HStack(spacing: 0) {
                        Image(asset: Asset.Image.icYellowStar).frame(width: 11, height: 11)
                        Spacer().frame(width: 3)
                        Text("4.2")
                            .foregroundColor(.black)
                            .font(.system(size: 12, weight: .medium))
                        Spacer()
                        Text("삭제")
                            .foregroundColor(.black)
                            .font(.system(size: 12, weight: .regular))
                    }
                    Spacer()
                    VStack(spacing: 4) {
                        Text("회귀한 천재 헌터의 슬기로운 청소생활 청소생활 청소생활")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                            .lineLimit(1)
                        Text("제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 안보면 바보 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 안보면 바보")
                            .foregroundColor(Color(asset: Asset.Color.gray004))
                            .font(.system(size: 13, weight: .regular))
                            .lineLimit(3)
                    }
                    Spacer()
                    HStack(spacing: 0) {
                        Spacer()
                        Image(asset: Asset.Image.icHeart).frame(width: 12, height: 11)
                        Spacer().frame(width: 2)
                        Text("25")
                            .foregroundColor(Color(asset: Asset.Color.gray004))
                            .font(.system(size: 11, weight: .regular))
                        Spacer().frame(width: 7)
                        Image(asset: Asset.Image.icComment).frame(width: 13, height: 11)
                        Spacer().frame(width: 2)
                        Text("25")
                            .foregroundColor(Color(asset: Asset.Color.gray004))
                            .font(.system(size: 11, weight: .regular))
                    }
                }
                Spacer().frame(width: 24)
            }
            Spacer().frame(height: 14)
        }
    }
}
