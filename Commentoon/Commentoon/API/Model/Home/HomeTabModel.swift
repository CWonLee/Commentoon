//
//  HomeTabModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/07/26.
//

import Foundation

struct HomeTabModel: Codable, Hashable {
    let recommend: [ProductModel]?
    let slots: [HomeTabSlotModel]?
}
