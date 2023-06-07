//
//  DetailWorkHeaderSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/05/17.
//

import SwiftUI
import Kingfisher

struct DetailWorkHeaderSection: View {
    let imageUrl = "https://i.ytimg.com/vi/u_gFUK09HZE/maxresdefault.jpg"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            KFImage(URL(string: imageUrl))
                .retry(maxCount: 3, interval: .seconds(5))
                .resizable()
                .frame(height: 466, alignment: .center)
                .clipped()
            Spacer().frame(height: 16)
            Text("전지적독자시점 전지적독자시점")
                .padding([.leading, .trailing], 20)
                .foregroundColor(.black)
                .font(.system(size: 22, weight: .regular))
                .lineLimit(nil)
            Spacer().frame(height: 4)
            Text("UMI / 슬리피-C / 싱숑")
                .padding([.leading, .trailing], 20)
                .foregroundColor(.black)
                .font(.system(size: 11, weight: .regular))
                .lineLimit(nil)
            Spacer().frame(height: 16)
            Text("'이건 내가 아는 그 전개다' 한순간에 세계가 멸망하고, 새로운 세상이 펼쳐졌다. 오직 나만이 완주했던 소설 세계에서 평범했던 독자의 새로운 삶이 시작된다. '이건 내가 아는 그 전개다' 한순간에 세계가 멸망하고, 새로운 세상이 펼쳐졌다. 오직 나만이 완주했던 소설 세계에서 평범했던 독자의 새로운 삶이 시작된다.")
                .padding([.leading, .trailing], 20)
                .foregroundColor(Color(asset: Asset.Color.gray004))
                .font(.system(size: 13, weight: .regular))
                .lineLimit(nil)
        }
    }
}
