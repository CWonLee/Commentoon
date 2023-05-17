//
//  RankingView.swift
//  Commentoon
//
//  Created by 이청원 on 2023/02/01.
//

import SwiftUI

struct RankingView: View {
    private let itemViewWidth: CGFloat = 119
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                ZStack {
                    Color.yellow.edgesIgnoringSafeArea(.all)
                    HStack(alignment: .top) {
                        Text("랭킹")
                            .padding(EdgeInsets(top: 10, leading: 16, bottom: 0, trailing: 0))
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .medium))
                        Text("웹툰·카카오")
                            .padding(EdgeInsets(top: 10, leading: 14, bottom: 0, trailing: 0))
                            .foregroundColor(Color(asset: Asset.Color.bluePointColor))
                            .font(.system(size: 16, weight: .medium))
                        Spacer()
                    }
                }
                .frame(height: 47)
                
                ScrollView(.vertical) {
                    VStack {
                        RankingHeaderSection()
                        ForEach(0..<10) { i in
                            RankingContentsSection()
                            Spacer().frame(height: 11)
                        }
                    }
                }
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

struct RankingView_Previews: PreviewProvider {
    static var previews: some View {
        RankingView()
    }
}
