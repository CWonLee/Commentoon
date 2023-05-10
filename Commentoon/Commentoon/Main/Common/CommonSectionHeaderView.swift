//
//  CommonSectionHeaderView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/05/10.
//

import SwiftUI

struct CommonSectionHeaderView: View {
    let title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        Text(title)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 16)
            .lineLimit(1)
            .foregroundColor(.black)
            .font(.system(size: 16, weight: .bold))
    }
}
