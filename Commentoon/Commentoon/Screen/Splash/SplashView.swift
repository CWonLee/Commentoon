//
//  SplashView.swift
//  Commentoon
//
//  Created by 이청원 on 2023/02/01.
//

import SwiftUI

struct SplashView: View {
    @EnvironmentObject var screenState: ScreenState
    
    var body: some View {
        VStack {
            Text("Splash View").font(Font.largeTitle)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    if CTUserDefaults.shared.accessToken.isEmpty {
                        self.screenState.state = .logout
                    } else {
                        self.screenState.state = .login
                    }
                }
            }
        }
    }
}
