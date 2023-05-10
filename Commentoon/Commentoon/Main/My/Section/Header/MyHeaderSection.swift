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
                            KFImage(URL(string: imageUrl))
                                .retry(maxCount: 3, interval: .seconds(5))
                                .resizable()
                                .frame(width: 76, height: 76)
                                .clipped()
                                .cornerRadius(38)
                            Spacer().frame(height: 0)
//                            Spacer()
                        }
                        Spacer().frame(width: 13)
                        VStack(alignment: .leading, spacing: 3) {
                            Text("강아지좋아 님 떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉떼이잉")
                                .foregroundColor(.black)
                                .lineLimit(1)
                                .font(.system(size: 16, weight: .medium))
                                .padding(.trailing, 30)

                            Text("판타지 장르를 좋아합니다. 다른 장르도 보긴 하는데 리뷰는 안 써요 판타지 장르를 좋아합니다. 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요 다른 장르도 보긴 하는데 리뷰는 안 써요")
                                .foregroundColor(Color("gray004"))
                                .font(.system(size: 11, weight: .regular))
                                .padding(.trailing, 20)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        Spacer()
                    }
                    .background(.green)
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
                    .background(.red)
                    
                    HStack {
                        Spacer().frame(width: 57)
                        VStack(spacing: 5) {
                            Text("120000")
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .medium))
                            Text("팔로워")
                                .foregroundColor(Color("gray004"))
                                .font(.system(size: 14, weight: .regular))
                        }
                        Spacer()
                        VStack(spacing: 5) {
                            Text("120000")
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .medium))
                            Text("팔로잉")
                                .foregroundColor(Color("gray004"))
                                .font(.system(size: 14, weight: .regular))
                        }
                        Spacer()
                        VStack(spacing: 5) {
                            Text("120000")
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .medium))
                            Text("리뷰 수")
                                .foregroundColor(Color("gray004"))
                                .font(.system(size: 14, weight: .regular))
                        }
                        Spacer().frame(width: 57)
                    }
                    Rectangle()
                        .frame(height: 23)
                        .foregroundColor(.yellow)
                }
                .background(Color("grayBg"))
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
