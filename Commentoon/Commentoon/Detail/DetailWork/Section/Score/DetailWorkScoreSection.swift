//
//  DetailWorkScoreSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/09.
//

import SwiftUI

struct DetailWorkScoreSection: View {
    var body: some View {
        VStack {
            DetailWorkScoreSectionHeaderView()
            
            HStack(spacing: 0) {
                Spacer()
                VStack(spacing: 0) {
                    Spacer()
                    Text("4.5")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                    Spacer().frame(height: 10)
                    StarRatingView(rating: 3.5)
                    Spacer().frame(height: 8)
                    Text("24개의 리뷰")
                        .font(.system(size: 12))
                        .foregroundColor(Color(asset: Asset.Color.gray004))
                    Spacer()
                }
                Spacer().frame(width: 36)
                VStack(spacing: 3) {
                    GraphView()
                    GraphView()
                    GraphView()
                    GraphView()
                    GraphView()
                }
                Spacer()
            }
            .frame(height: 108)
            .background(Color(asset: Asset.Color.grayBg))
            .cornerRadius(15)
            .padding([.leading, .trailing], 20)
            
        }
    }
}
