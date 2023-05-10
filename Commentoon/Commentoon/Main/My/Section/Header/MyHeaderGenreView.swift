//
//  MyHeaderGenreView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/05/07.
//

import SwiftUI

struct MyHeaderGenreView: View {
    let genreText: String
    
    init(_ genreText: String) {
        self.genreText = genreText
    }
    
    var body: some View {
        Text(genreText)
            .foregroundColor(.black)
            .font(.system(size: 11, weight: .regular))
            .padding(.horizontal, 8)
            .frame(height: 24)
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.white)
            )
    }
}
