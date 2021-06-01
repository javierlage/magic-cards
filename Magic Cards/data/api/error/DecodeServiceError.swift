//
//  DecodeServiceError.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation
// Manage exception for encode and decode
class DecodeServiceError: ServiceError {
    override init(message: String = "Decode Error") {
        super.init(message: message)
    }
}
