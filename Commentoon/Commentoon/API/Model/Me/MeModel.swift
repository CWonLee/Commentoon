//
//  MeModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/08/10.
//

import Foundation

struct MeModel: Codable {
    let id: Int?
    let nickname: String?
    let thumbUrl: String?
    let introText: String?
    let preferGenreList: [String]?
    let followerCount: Int?
    let followingCount: Int?
    let reviewCount: Int?
}
