//
//  DetailWorkScoreSectionHeaderView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/09.
//

import SwiftUI

struct DetailWorkScoreSectionHeaderView: View {
    var body: some View {
        HStack {
            Text("평점")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
                .foregroundColor(.black)
                .font(.system(size: 16, weight: .medium))
            Spacer()
            Button(action: {
                print("리뷰 작성하기 클릭")
            }) {
                Text("리뷰 작성하기")
                    .font(.system(size: 11, weight: .medium))
                    .foregroundColor(.white)
            }
            .frame(width: 82, height: 24)
            .background(Color(asset: Asset.Color.gray004))
            .cornerRadius(5)
            .padding(.trailing, 20)
        }
    }
}
