//
//  HomeContentsItemView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/03/26.
//

import SwiftUI
import Kingfisher

struct HomeContentsItemView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                KFImage(URL(string: "https://image.yes24.com/goods/117243156/XL"))
                    .retry(maxCount: 3, interval: .seconds(5))
                    .resizable()
                    .frame(width: proxy.size.width, height: 125, alignment: .center)
                    .cornerRadius(20)
                    .clipped()
                Spacer().frame(height: 4)
                HStack {
                    Spacer().frame(width: 4)
                    Image("icStar").frame(width: 13, height: 13)
                    Spacer().frame(width: 2)
                    Text("4.5")
                        .lineLimit(1)
                        .foregroundColor(.black)
                        .font(.system(size: 12, weight: .regular))
                        .frame(height: 12, alignment: .top)
                    Spacer()
                }
                .frame(height: 13)
                Spacer().frame(height: 1)
                HStack {
                    Spacer().frame(width: 4)
                    Text("전지적 독자 시점")
                        .lineLimit(1)
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .regular))
                        .frame(width: proxy.size.width, height: 19, alignment: .leading)
                }
            }
        }
    }
    
    func printText(string: String) {
        print(string)
    }
}

struct HomeContentsItemView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentsItemView()
    }
}
