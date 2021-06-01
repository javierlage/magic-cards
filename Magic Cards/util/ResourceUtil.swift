//
//  ResourceUtil.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

class ResourceUtil {
    static func getResource(key: String, resource: String) -> String {
        if let path = Bundle.main.path(forResource: resource, ofType: "plist"),
           let resourceFileDictionary = NSDictionary(contentsOfFile: path),
           let value = resourceFileDictionary.value(forKey: key) as? String {
            return value
        }
        return ""
    }
}
