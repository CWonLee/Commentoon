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
    @EnvironmentObject var screenState: ScreenState
    
    var body: some View{
        Button {
            login()
        } label : {
            Image(asset: Asset.Image.btnKakaoLogin)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width : UIScreen.main.bounds.width * 0.9)
        }
    }
    
    private func login() {
        if (UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                if let oauthToken = oauthToken,
                   let idToken = oauthToken.idToken {
                    requestKakaoToken(idToken)
                }
            }
        } else {
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                if let oauthToken = oauthToken {
                    requestKakaoToken(oauthToken.accessToken)
                }
            }
        }
    }
    
    private func requestKakaoToken(_ accessToken: String) {
        APIManager.request(name: "AuthKakao")
            .headers(["Authorization": "Bearer \(accessToken)"])
            .responseModel(model: LoginModel.self) { result in
                switch result {
                case .success(let response):
                    CTUserDefaults.shared.accessToken = response.accessToken ?? ""
                    screenState.state = .login
                case .failure(let error):
                    print("error : \(error)")
                }
            }
    }
}

