//
//  MyHeaderSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/05/07.
//

import SwiftUI
import Kingfisher

struct MyHeaderSection: View {
    let imageUrl = "https://i.ytimg.com/vi/u_gFUK09HZE/maxresdefault.jpg"
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Spacer().frame(height: 20)
                HStack(alignment: .top) {
                    Spacer().frame(width: 20)
                    VStack {
                        KFImageView(url: imageUrl)
                            .frame(width: 76, height: 76)
                            .cornerRadius(38)
                        Spacer().frame(height: 0)
                    }
                    Spacer().frame(width: 13)
                    VStack(alignment: .leading, spacing: 3) {
                        Text("강아지좋아 님 떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉")
                            .foregroundColor(.black)
                            .lineLimit(1)
                            .font(.system(size: 16, weight: .medium))
                            .padding(.trailing, 30)
                        
                        Text("판타지 장르를 좋아합니다. 다른 장르도 보긴 하는데 리뷰는 안 써요 판타지 장르를 좋아합니다. 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요")
                            .foregroundColor(Color(asset: Asset.Color.gray004))
                            .font(.system(size: 11, weight: .regular))
                            .padding(.trailing, 20)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    Spacer()
                }
                Spacer().frame(height: 13)
                HStack {
                    Spacer().frame(width: 20)
                    ForEach(0..<4) { idx in
                        MyHeaderGenreView("판타지zzㅋ")
                        if idx != 4 {
                            Spacer().frame(width: 8)
                        }
                    }
                    Spacer(minLength: 20)
                }
                Spacer().frame(height: 25)
                HStack {
                    Spacer().frame(width: 57)
                    VStack(spacing: 5) {
                        Text("120000")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .medium))
                        Text("팔로워")
                            .foregroundColor(Color(asset: Asset.Color.gray004))
                            .font(.system(size: 14, weight: .regular))
                    }
                    Spacer()
                    VStack(spacing: 5) {
                        Text("120000")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .medium))
                        Text("팔로잉")
                            .foregroundColor(Color(asset: Asset.Color.gray004))
                            .font(.system(size: 14, weight: .regular))
                    }
                    Spacer()
                    VStack(spacing: 5) {
                        Text("120000")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .medium))
                        Text("리뷰 수")
                            .foregroundColor(Color(asset: Asset.Color.gray004))
                            .font(.system(size: 14, weight: .regular))
                    }
                    Spacer().frame(width: 57)
                }
                Spacer().frame(height: 23)
            }
            .background(Color(asset: Asset.Color.grayBg))
            VStack {
                HStack {
                    Spacer()
                    Image(asset: Asset.Image.icSetting)
                        .resizable()
                        .frame(width: 17, height: 17)
                        .padding(.top, 12)
                        .padding(.trailing, 11)
                }
                Spacer()
            }
        }
    }
}
