//
//  LoginModel.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/08/02.
//

import Foundation

struct LoginModel: Codable {
    let tokenType: String?
    let accessToken: String?
    let expiresIn: Int?
    let refreshToken: String?
    let refreshTokenExpiresIn: Int?
    let scope: String?
    
    enum CodingKeys: String, CodingKey {
        case tokenType = "token_type"
        case accessToken = "access_token"
        case expiresIn = "expires_in"
        case refreshToken = "refresh_token"
        case refreshTokenExpiresIn = "refresh_token_expires_in"
        case scope = "scope"
    }
}
