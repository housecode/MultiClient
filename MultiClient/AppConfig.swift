//
//  AppConfig.swift
//  MultiClient
//
//  Created by Cahyo Agung on 30/03/22.
//

import UIKit

class AppConfig: NSObject {
    
    static func stringValue(key: String) -> String {
        guard let value = Bundle.main.object(forInfoDictionaryKey: key) as? String
        else {
          fatalError("Invalid value or undefined key")
        }
        return value
    }

}
