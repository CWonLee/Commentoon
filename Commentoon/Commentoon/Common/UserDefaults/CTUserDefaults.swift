//
//  CTUserDefaults.swift
//  Commentoon
//
//  Created by blue-one-L on 2023/08/02.
//

import Foundation

class CTUserDefaults {
    static let shared = CTUserDefaults()
    
    @DefaultValue("accessToken", defaultValue: "")
    var accessToken: String
}

extension CTUserDefaults {
    @propertyWrapper
    struct DefaultValue<T> {
        let key: String
        let defaultValue: T

        init(_ key: String, defaultValue: T) {
            self.key = key
            self.defaultValue = defaultValue
        }

        var wrappedValue: T {
            get {
                return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
            }
            set {
                UserDefaults.standard.set(newValue, forKey: key)
            }
        }
    }
}
