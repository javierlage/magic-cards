//
//  BaseRouter.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import UIKit

class BaseRouter {
    static var mNavigationController: UINavigationController? {
        let window = UIApplication.shared.windows.filter { $0.isKeyWindow }.first
        if let navigationController = window?.rootViewController as? UINavigationController {
            return navigationController
        }
        return nil
    }
}
