//
//  ServiceError.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation
// Manage HTTP request API errors.
class ServiceError: Error {
    var message: String
    init(message: String = "Ops!!! something went wrong") {
        self.message = message
    }
}
