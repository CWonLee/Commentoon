//
//  MyView.swift
//  Commentoon
//
//  Created by 이청원 on 2023/02/01.
//

import SwiftUI

struct MyView: View {
    @ObservedObject private var viewModel = MyViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVStack(spacing: 0) {
                    MyHeaderSection(model: viewModel.meModel)
                    Spacer().frame(height: 19)
                    MyReviewSection()
                }
            }
        }
        .ignoresSafeArea()
        .toolbar(.hidden, for: .navigationBar)
        .onAppear {
            viewModel.requestAPI()
        }
    }
}
