//
//  DetailWorkMyReviewTitle.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/14.
//

import SwiftUI

struct DetailWorkMyReviewTitleView: View {
    var body: some View {
        HStack {
            Spacer().frame(width: 16)
            Text("내 리뷰")
                .font(.system(size: 13, weight: .medium))
                .foregroundColor(.black)
            Spacer().frame(width: 6)
            Image(asset: Asset.Image.icDownArrow)
                .resizable()
                .frame(width: 11, height: 7)
            Spacer()
        }
        .frame(height: 24)
    }
}
