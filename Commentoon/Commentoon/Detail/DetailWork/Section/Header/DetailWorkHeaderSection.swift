//
//  DetailWorkHeaderSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/05/17.
//

import SwiftUI
import Kingfisher

struct DetailWorkHeaderSection: View {
    @ObservedObject private var viewModel: DetailWorkViewModel
    
    init(viewModel: DetailWorkViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            KFImage(URL(string: viewModel.model?.thumbUrl ?? ""))
                .retry(maxCount: 3, interval: .seconds(5))
                .onFailure { error in
                    print("에러!! \(error)")
                }
                .resizable()
                .frame(height: 466, alignment: .center)
                .clipped()
            Spacer().frame(height: 16)
            Text(viewModel.model?.title ?? "")
                .padding([.leading, .trailing], 20)
                .foregroundColor(.black)
                .font(.system(size: 22, weight: .regular))
                .lineLimit(nil)
            Spacer().frame(height: 4)
            Text("작가이름")
                .padding([.leading, .trailing], 20)
                .foregroundColor(.black)
                .font(.system(size: 11, weight: .regular))
                .lineLimit(nil)
            Spacer().frame(height: 16)
            Text(viewModel.model?.introText ?? "")
                .padding([.leading, .trailing], 20)
                .foregroundColor(Color(asset: Asset.Color.gray004))
                .font(.system(size: 13, weight: .regular))
                .lineLimit(nil)
        }
    }
}
