//
//  CommonMethods.swift
//  SwiftUI-Training
//
//  Created by Mehreen Waqar on 01/01/2024.
//

import Foundation

class CommonMethods {
    static func textFieldValidatorEmail(_ string: String) -> Bool {
            if string.count > 100 {
                return false
            }
            let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}" // short format
            let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
            return emailPredicate.evaluate(with: string)
    }
    
    static func validatePassword(_ password: String) -> (Bool, String) {
            var errorMessage = ""
            var passwordIsValid = false
            let passwordPattern = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$"
            let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordPattern)
            if !passwordPredicate.evaluate(with: password) {
                errorMessage = "Password must be at least 8 characters long and include at least 1 lowercase letter, 1 uppercase letter, 1 numeric digit, and 1 special character."
                passwordIsValid = false
            } else {
                errorMessage = ""
                passwordIsValid = true
            }
        return (passwordIsValid, errorMessage)
        }
}
