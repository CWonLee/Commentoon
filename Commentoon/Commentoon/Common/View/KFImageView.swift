//
//  KFImageView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/21.
//

import SwiftUI
import Kingfisher

struct KFImageView: View {
    let url: String

    var body: some View {
        KFImage(URL(string: url))
            .onFailure { error in
                print("에러!! \(error)")
            }
            .resizable()
            .clipped()
    }
}
