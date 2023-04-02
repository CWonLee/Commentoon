//
//  HomeView.swift
//  Commentoon
//
//  Created by 이청원 on 2023/02/01.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVStack {
                    HomeHeaderSection()
                        .frame(height: 288)
                    Spacer().frame(height: 19)
                    HomeContentsSection()
                    Spacer().frame(height: 23)
                    HomeContentsSection()
                    Spacer().frame(height: 23)
                    HomeContentsSection()
                    Spacer().frame(height: 23)
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
        }
        .ignoresSafeArea()
        .toolbar(.hidden, for: .navigationBar)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
