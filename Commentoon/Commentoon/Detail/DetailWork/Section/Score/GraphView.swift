//
//  GraphView.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/09.
//

import SwiftUI

struct GraphView: View {
    let progress = 0.4
    
    var body: some View {
        let graph = Rectangle()
            .frame(width: 95, height: 7)
            .foregroundColor(Color(asset: Asset.Color.gray002))
            .cornerRadius(20)
        
        HStack {
            Text("5").font(.system(size: 10, weight: .medium)).foregroundColor(Color(asset: Asset.Color.gray004))
            Spacer().frame(width: 7)
            graph.overlay(
                GeometryReader { g in
                    let width = progress / 1.0 * g.size.width
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .frame(width: width)
                            .foregroundColor(Color(asset: Asset.Color.yellowStar))
                            .cornerRadius(20)
                    }
                }
                .mask(graph)
            )
        }
    }
}
