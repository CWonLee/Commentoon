//
//  HomeTabSlotModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/07/26.
//

import Foundation

struct HomeTabSlotModel: Codable, Hashable{
    let order: Int?
    let title: String?
    let platform: String?
    let productList: [ProductModel]?
}
