//
//  TabbarView.swift
//  Commentoon
//
//  Created by 이청원 on 2023/02/01.
//

import SwiftUI

struct TabbarView: View {
    init() {
        UITabBar.appearance().barTintColor = .blue
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "tabIconColor")
        //https://velog.io/@leejh3224/iOS-TabBar-shadow-%EC%BB%A4%EC%8A%A4%ED%84%B0%EB%A7%88%EC%9D%B4%EC%A7%95-trjugzee87
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image("icTabHome")
                    Text("홈")
                }
            RankingView()
                .tabItem {
                    Image("icTabRanking")
                    Text("랭킹")
                }
            SearchView()
                .tabItem {
                    Image("icTabSearch")
                    Text("검색")
                }
            MyView()
                .tabItem {
                    Image("icTabMy")
                    Text("마이")
                }
        }
        .accentColor(.yellow)
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
