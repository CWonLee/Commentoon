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
                    HStack {
                        Spacer().frame(width: 20)
                        VStack {
                            KFImage(URL(string: imageUrl))
                                .retry(maxCount: 3, interval: .seconds(5))
                                .resizable()
                                .frame(width: 76, height: 76)
                                .clipped()
                                .cornerRadius(38)
                            Spacer()
                        }
                        Spacer().frame(width: 13)
                        VStack(alignment: .leading, spacing: 3) {
                            Text("강아지좋아 님 떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉")
                                .foregroundColor(.black)
                                .lineLimit(1)
                                .font(.system(size: 16, weight: .medium))
                                .padding(.trailing, 30)

                            Text("판타지 장르를 좋아합니다. 다른 장르도 보긴 하는데 리뷰는 안 써요 판타지 장르를 좋아합니다. 다른 장르도 보긴 하는데 리뷰는 안 써요")
                                .foregroundColor(Color("gray004"))
                                .font(.system(size: 11, weight: .regular))
                                .padding(.trailing, 20)
                        }
                        Spacer()
                    }
                    Rectangle()
                        .frame(height: 20)
                        .foregroundColor(.yellow)
                }
                VStack {
                    HStack {
                        Spacer()
                        Image("icSetting")
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

struct MyHeaderSection_Previews: PreviewProvider {
    static var previews: some View {
        MyHeaderSection()
    }
}
