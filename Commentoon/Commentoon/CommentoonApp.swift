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
    
    init() {
        KakaoSDK.initSDK(appKey: kakaoNativeAppKey)
    }
    
    var body: some Scene {
        WindowGroup {
//            SplashView()
            TabbarView()
//            LoginView()
//                .onOpenURL { url in
//                    if AuthApi.isKakaoTalkLoginUrl(url) {
//                        _ = AuthController.handleOpenUrl(url: url)
//                    }
//                }
        }
    }
}
