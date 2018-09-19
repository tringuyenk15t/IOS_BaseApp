//
//  StringUtils.swift
//  BaseApp
//
//  Created by tri nguyen on 9/16/18.
//  Copyright © 2018 tri nguyen. All rights reserved.
//

import Foundation

class StringUtils {
    static let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    static func checkEmailFormat(emailToCheck: String) -> Bool  {
        let emailValidate = NSPredicate(format: "SELF MATCHES[c] %@", emailRegex)
        return emailValidate.evaluate(with: emailToCheck)
    }
}
