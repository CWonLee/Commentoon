//
//  DetailWorkView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/05/17.
//

import SwiftUI

struct DetailWorkView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                DetailWorkHeaderSection()
            }
        }
        .toolbar(.hidden)
    }
}
