//
//  FirstScreenViewModel.swift
//  BaseApp
//
//  Created by tri nguyen on 9/7/18.
//  Copyright © 2018 tri nguyen. All rights reserved.
//

import RxCocoa
import RxSwift

class FirstScreenViewModel {
    let text = BehaviorRelay<String>(value: "")
    
    var isEmpty: Observable<Bool> {
        return text.asObservable().map{ (text) in
            return text.isEmpty
        }
    }
    
    var isValid: Observable<Bool> {
        return text.asObservable().map{ (text) in
            return StringUtils.checkEmailFormat(emailToCheck: text)
        }
    }
}
