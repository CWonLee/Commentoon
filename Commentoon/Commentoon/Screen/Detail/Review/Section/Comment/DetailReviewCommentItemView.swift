//
//  DetailReviewCommentItemView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/28.
//

import SwiftUI

struct DetailReviewCommentItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 16)
            HStack {
                Spacer().frame(width: 20)
                KFImageView(url: "https://i.ytimg.com/vi/u_gFUK09HZE/maxresdefault.jpg")
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
                Spacer().frame(width: 20)
            }
            Text("제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 제가 본 웹툰중에 제일 재밌어요. 안보면 바보")
                .font(.system(size: 13))
                .foregroundColor(.black)
                .padding([.leading, .trailing], 20)
            Spacer().frame(height: 16)
            Rectangle().frame(height: 1).foregroundColor(Color(asset: Asset.Color.grayStroke))
                .padding([.leading, .trailing], 20)
        }
    }
}
