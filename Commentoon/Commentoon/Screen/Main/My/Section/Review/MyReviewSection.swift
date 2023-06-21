//
//  MyReviewSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/05/10.
//

import SwiftUI

struct MyReviewSection: View {
    var body: some View {
        VStack {
            CommonSectionHeaderView("안녕하세요 님의 리뷰")
                .frame(height: 24)
            MyReviewItemView()
            MyReviewItemView()
            MyReviewItemView()
            MyReviewItemView()
            MyReviewItemView()
            MyReviewItemView()
            MyReviewItemView()
            MyReviewItemView()
        }
    }
}
