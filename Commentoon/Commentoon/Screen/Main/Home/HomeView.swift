//
//  HomeView.swift
//  Commentoon
//
//  Created by 이청원 on 2023/02/01.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVStack {
                    HomeHeaderSection(model: viewModel.homeTabModel?.recommend ?? [])
                        .frame(height: 288)
                    Spacer().frame(height: 32)
                    ForEach(viewModel.homeTabModel?.slots ?? [], id: \.self) {
                        HomeContentsSection(model: $0)
                    }
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
        }
        .ignoresSafeArea()
        .toolbar(.hidden, for: .navigationBar)
        .onAppear {
            viewModel.requestAPI()
        }
    }
}
