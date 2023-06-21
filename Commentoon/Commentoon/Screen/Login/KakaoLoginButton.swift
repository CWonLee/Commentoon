//
//  KakaoLoginButton.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/06/21.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser

struct KakaoLoginButton: View {
    var body: some View{
        Button {
            if (UserApi.isKakaoTalkLoginAvailable()) {
                UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    if let oauthToken = oauthToken{
                        // 소셜 로그인(회원가입 API CALL)
                    }
                }
            } else {
                UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    if let oauthToken = oauthToken{
                        print("kakao success")
                        // 소셜 로그인(회원가입 API CALL)
                    }
                }
            }
        } label : {
            Image(asset: Asset.Image.btnKakaoLogin)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width : UIScreen.main.bounds.width * 0.9)
        }
    }
}

