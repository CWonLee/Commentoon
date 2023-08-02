//
//  CommentoonApp.swift
//  Commentoon
//
//  Created by 이청원 on 2023/02/01.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct CommentoonApp: App {
    private let kakaoNativeAppKey = "d94eb822b129c110eeb1fac46058a2a5"
    
    @StateObject private var screenState = ScreenState()
    
    init() {
        KakaoSDK.initSDK(appKey: kakaoNativeAppKey)
    }
    
    var body: some Scene {
        WindowGroup {
            switch screenState.state {
            case .login:
                TabbarView().environmentObject(screenState)
            case .logout:
                LoginView().environmentObject(screenState)
            case .splash:
                SplashView().environmentObject(screenState)
            }
        }
    }
}

class ScreenState: ObservableObject {
    enum State {
        case splash
        case login
        case logout
    }
    
    @Published var state: State = .splash
}
