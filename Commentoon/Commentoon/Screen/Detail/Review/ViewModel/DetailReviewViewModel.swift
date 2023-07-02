//
//  DetailReviewViewModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/07/02.
//

import Foundation

class DetailReviewViewModel: ObservableObject {
    private let reviewId: Int
//    @Published var model: ReviewModel?
    
    init(reviewId: Int) {
        self.reviewId = reviewId
    }
}
