//
//  RankingHeaderSection.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/04/12.
//

import SwiftUI

struct RankingHeaderSection: View {
    var body: some View {
        HStack {
            Text("Top 20")
                .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 0))
                .foregroundColor(.black)
                .font(.system(size: 15, weight: .medium))
            Spacer()
        }
        .frame(height: 32)
        .background(.blue)
    }
}

struct RankingHeaderSection_Previews: PreviewProvider {
    static var previews: some View {
        RankingHeaderSection()
    }
}
