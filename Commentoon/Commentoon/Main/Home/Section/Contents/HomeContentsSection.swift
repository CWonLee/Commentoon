//
//  HomeContentsSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/03/26.
//

import SwiftUI

struct HomeContentsSection: View {
    @State private var itemViewHeights: [CGFloat] = Array(repeating: 0, count: 10)
    private var maxHeight: CGFloat {
        itemViewHeights.max() ?? 0
    }
    private let itemViewWidth: CGFloat = 119
    
    var body: some View {
        VStack {
            Text("서영 님의 최근 리뷰")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
                .lineLimit(1)
                .foregroundColor(.black)
                .font(.system(size: 16, weight: .bold))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Spacer().frame(width: 16)
                    ForEach(0..<10) { _ in
                        HomeContentsItemView()
                            .frame(width: itemViewWidth)
                        Spacer().frame(width: 16)
                    }
                }
            }
            Spacer().frame(height: 23)
        }
    }
}

struct HomeContentsSection_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentsSection()
    }
}
