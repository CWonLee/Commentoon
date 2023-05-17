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
                    Spacer().frame(height: 32)
                    HomeContentsSection()
                    HomeContentsSection()
                    HomeContentsSection()
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
        }
        .ignoresSafeArea()
        .toolbar(.hidden, for: .navigationBar)
    }
}
