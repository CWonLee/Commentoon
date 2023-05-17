//
//  RankingContentsSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/04/12.
//

import SwiftUI
import Kingfisher

struct RankingContentsSection: View {
    let imageUrl = "https://i.ytimg.com/vi/u_gFUK09HZE/maxresdefault.jpg"
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Spacer().frame(width: 24)
                KFImage(URL(string: imageUrl))
                    .retry(maxCount: 3, interval: .seconds(5))
                    .resizable()
                    .frame(width: 99, height: 109)
                    .clipped()
                    .cornerRadius(15)
                Spacer().frame(width: 16)
                VStack(alignment: .leading) {
                    Spacer().frame(height: 9)
                    Text("회귀한 천재 헌터의 슬기로운 청소생활 두줄 두줄 두줄 두줄")
                        .frame(alignment: .leading)
                        .foregroundColor(.black)
                        .lineLimit(2)
                        .font(.system(size: 14, weight: .regular))
                    Spacer().frame(height: 6)
                    Text("UMI / 슬리피-C / 싱숑")
                        .frame(alignment: .leading)
                        .foregroundColor(.gray)
                        .lineLimit(1)
                        .font(.system(size: 10, weight: .regular))
                    Spacer()
                    HStack(spacing: 0) {
                        Text("#학원/판타지")
                            .foregroundColor(.blue)
                            .lineLimit(1)
                            .font(.system(size: 13, weight: .medium))
                        Spacer()
                        HStack(spacing: 0) {
                            Image(asset: Asset.Image.icStar)
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13, height: 13)
                                .foregroundColor(.yellow)
                            Text("4.5")
                                .foregroundColor(.yellow)
                                .lineLimit(1)
                                .font(.system(size: 12, weight: .medium))
                                .padding(.top, 2)
                        }
                    }
                    Spacer().frame(height: 11)
                }
                Spacer().frame(width: 30)
            }
            Spacer().frame(height: 11)
            Rectangle()
                .frame(height: 0.5)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                .foregroundColor(.gray)
        }
    }
}

struct RankingContentsSection_Previews: PreviewProvider {
    static var previews: some View {
        RankingContentsSection()
    }
}
