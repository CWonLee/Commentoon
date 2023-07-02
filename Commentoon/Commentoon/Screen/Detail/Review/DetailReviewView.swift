//
//  DetailReviewView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/28.
//

import SwiftUI

struct DetailReviewView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(asset: Asset.Image.icBackArrow)
                                .frame(width: 50)
                        }
                        Spacer()
                    }
                    .frame(height: 42)
                    Text("전지적 독자 시점")
                        .font(.system(size: 16, weight: .black))
                        .foregroundColor(.black)
                        .padding([.leading, .trailing], 60)
                        .lineLimit(1)
                }
                DetailReviewReviewItemView()
                ForEach(0..<5) { _ in
                    DetailReviewCommentItemView()
                }
            }
        }
        .toolbar(.hidden)
    }
}
