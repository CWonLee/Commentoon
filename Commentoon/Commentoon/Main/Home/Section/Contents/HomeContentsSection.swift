//
//  HomeContentsSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/03/26.
//

import SwiftUI

struct HomeContentsSection: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Text("서영 님의 최근 리뷰")
                    .frame(width: proxy.size.width - 32, alignment: .leading)
                    .lineLimit(1)
                    .foregroundColor(.black)
                    .font(.system(size: 16, weight: .bold))
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Spacer().frame(width: 16)
                        ForEach(0..<10) { _ in
                            HomeContentsItemView().frame(width: 119, height: 162)
                            Spacer().frame(width: 16)
                        }
                    }
                }
                .frame(height: 162)
                Spacer().frame(height: 23)
            }
        }
    }
}

struct HomeContentsSection_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentsSection()
    }
}
