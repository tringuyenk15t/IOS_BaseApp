//
//  FormValidationViewModel.swift
//  BaseApp
//
//  Created by tri nguyen on 9/8/18.
//  Copyright © 2018 tri nguyen. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class FormValidationViewModel {
    
    let account = BehaviorRelay<String>(value: "")
    let password = BehaviorRelay<String>(value: "")
    
    var isAccountValid: Observable<Bool> {
        return account.asObservable().map { (accountToCheck) in
            return  accountToCheck.count > 0
        }
    }
    
    var isPasswordValid: Observable<Bool> {
        return password.asObservable().map { (passwordToCheck) in
            return passwordToCheck.count > 0
        }
    }
    
    var isValidated: Observable<Bool> {
        return Observable.combineLatest(isAccountValid, isPasswordValid) { (accountValid, passwordValid) in
            return accountValid && passwordValid
        }
    }
}
