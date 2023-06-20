//
//  ProductModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/20.
//

import Foundation

struct ProductModel: Codable {
    let id: Int?
    let title: String?
    let thumbUrl: String?
    let averageScore: Float?
    let endUrl: String?
    let introText: String?
    let viewCount: Int
    let isForAdult: Bool?
    let platform: String?
    let reviewCount: Int?
    let genres: [String]?
    let scoreGraph: [Float]?
}
