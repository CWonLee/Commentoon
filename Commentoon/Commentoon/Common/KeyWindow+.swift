//
//  KeyWindow+.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/03/26.
//

import SwiftUI

func getKeyWindow() -> UIEdgeInsets {
    let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    return scene?.windows.first?.safeAreaInsets ?? .zero
}
