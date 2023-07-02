//
//  DetailWorkReviewItemView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/14.
//

import SwiftUI
import Kingfisher

struct DetailWorkReviewItemView: View {
    let imageUrl = "https://i.ytimg.com/vi/u_gFUK09HZE/maxresdefault.jpg"
    private let topPadding: CGFloat
    
    init(topPadding: CGFloat = 16) {
        self.topPadding = topPadding
    }
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(alignment: .leading) {
                Spacer().frame(height: self.topPadding)
                HStack {
                    Spacer().frame(width: 20)
                    KFImageView(url: imageUrl)
                        .frame(width: 38, height: 38)
                        .cornerRadius(19)
                    Spacer().frame(width: 19)
                    VStack(alignment: .leading) {
                        Text("강아지좋아 강아지좋아 강아지좋아 강아지좋아 강아지좋아")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.black)
                            .lineLimit(1)
                        Spacer().frame(height: 5)
                        Text("2023-02-10")
                            .font(.system(size: 10))
                            .foregroundColor(Color(asset: Asset.Color.gray005))
                    }
                    Spacer(minLength: 10)
                    Text("4.5")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(asset: Asset.Color.yellowStar))
                    Spacer().frame(width: 5)
                    StarRatingView(rating: 4.5)
                    Spacer().frame(width: 20)
                }
                Text("제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 안보면 바보")
                    .font(.system(size: 13))
                    .foregroundColor(.black)
                    .padding([.leading, .trailing], 20)
                Spacer().frame(height: 17)
                HStack {
                    Spacer().frame(width: 20)
                    Image(asset: Asset.Image.icHeart)
                        .resizable()
                        .frame(width: 15, height: 15)
                    Text("25")
                        .font(.system(size: 14))
                        .foregroundColor(Color(asset: Asset.Color.gray005))
                    Spacer().frame(width: 24)
                    NavigationLink(destination: DetailReviewView()) {
                        HStack {
                            Image(asset: Asset.Image.icComment)
                                .resizable()
                                .frame(width: 16, height: 13)
                            Text("23")
                                .font(.system(size: 14))
                                .foregroundColor(Color(asset: Asset.Color.gray005))
                        }
                    }
                    Spacer()
                }
                Spacer().frame(height: 22)
            }
            HStack {
                Spacer()
                Text("수정")
                    .font(.system(size: 13))
                    .foregroundColor(Color(asset: Asset.Color.gray005))
                Spacer().frame(width: 16)
                Text("삭제")
                    .font(.system(size: 13))
                    .foregroundColor(Color(asset: Asset.Color.gray005))
                Spacer().frame(width: 28)
            }
            .padding(.bottom, 14)
        }
    }
}
