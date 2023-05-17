//
//  RootTabView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/03/26.
//

import SwiftUI

struct TabbarView: View {
    @State private var selectedIndex = 0
    let tabBarImageNames = ["icTabHome", "icTabRanking", "icTabSearch", "icTabMy"]
    let selectedTabBarImageNames = ["icSelectedTabHome", "icSelectedTabRanking", "icSelectedTabSearch", "icSelectedTabMy"]
    let tabBarNames = ["홈", "랭킹", "검색", "마이"]
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                switch selectedIndex {
                case 0:
                    HomeView()
                case 1:
                    RankingView()
                case 2:
                    SearchView()
                default:
                    MyView()
                }
            }
            Spacer(minLength: 0)
            VStack {
                HStack {
                    Spacer()
                    ForEach(0..<tabBarImageNames.count, id: \.self) { num in
                        VStack {
                            Image(selectedIndex == num ? selectedTabBarImageNames[num] : tabBarImageNames[num])
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color(asset: selectedIndex == num ? Asset.Color.bluePointColor : Asset.Color.grayGnb))
                            Text(tabBarNames[num])
                                .font(.system(size: 11, weight: .regular))
                                .foregroundColor(Color(asset: Asset.Color.grayGnb))
                        }
                        .frame(width: 80, height: 80)
                        .gesture(
                            TapGesture()
                                .onEnded { _ in
                                    selectedIndex = num
                                }
                        )
                        if num == tabBarImageNames.count - 1 {
                            Spacer()
                        } else {
                            Spacer()
                                .frame(width: 2)
                        }
                    }
                }
                .frame(height: 80)
                Spacer()
            }
            .frame(height: (getKeyWindow().bottom) + 80)
            .background(
                Color.white.shadow(color: Color.black.opacity(0.3), radius: 8, y: -2)
            )
        }
        .ignoresSafeArea()
    }
}
