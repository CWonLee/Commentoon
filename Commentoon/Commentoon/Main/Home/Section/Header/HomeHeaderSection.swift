//
//  HomeHeaderSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/03/26.
//

import SwiftUI
import Kingfisher

struct HomeHeaderSection: View {
    let imageUrls: [String] = [
        "https://i.ytimg.com/vi/u_gFUK09HZE/maxresdefault.jpg",
        "https://i.ytimg.com/vi/M8ZTeGuqep0/maxresdefault.jpg",
        "https://image.ajunews.com/content/image/2022/04/24/20220424121954730673.png"
    ]
    
    var body: some View {
        GeometryReader { proxy in
            TabView {
                ForEach(imageUrls.indices, id: \.self) { index in
                    KFImageView(url: imageUrls[index])
                        .frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
    }
}
