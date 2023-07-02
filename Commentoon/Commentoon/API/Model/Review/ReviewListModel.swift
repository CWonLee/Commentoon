//
//  ReviewListModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/07/02.
//

import Foundation

struct ReviewModel: Codable, Hashable {
    let id: Int?
    let description: String?
    let score: Float?
}
