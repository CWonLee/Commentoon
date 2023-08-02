//
//  SplashView.swift
//  Commentoon
//
//  Created by 이청원 on 2023/02/01.
//

import SwiftUI

struct SplashView: View {
    // @State : 값 변경 시 body값 다시 그려짐, body내에서만 사용해야함
    @State var isActive: Bool = false
    
    var body: some View {
        VStack {
            if self.isActive {
                LoginView()
            } else {
                Text("Splash View")
                    .font(Font.largeTitle)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}
