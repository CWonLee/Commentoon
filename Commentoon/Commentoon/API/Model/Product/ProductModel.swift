//
//  ProductModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/20.
//

import Foundation

struct ProductModel: Codable, Hashable, Identifiable {
    let id: Int?
    let title: String?
    let thumbUrl: String?
    let averageScore: Float?
    let endUrl: String?
    let introText: String?
    let viewCount: Int?
    let isForAdult: Bool?
    let platform: String?
    let reviewCount: Int?
    let genres: [String]?
    let scoreGraph: [Float]?
    
    let uuid = UUID()
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case thumbUrl
        case averageScore
        case endUrl
        case introText
        case viewCount
        case isForAdult
        case platform
        case reviewCount
        case genres
        case scoreGraph
    }
}
