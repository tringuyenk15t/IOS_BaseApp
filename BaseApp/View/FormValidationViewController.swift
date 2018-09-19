//
//  FormValidationViewController.swift
//  BaseApp
//
//  Created by tri nguyen on 9/8/18.
//  Copyright © 2018 tri nguyen. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class FormValidationViewController: UIViewController {

    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var formValidationViewModel = FormValidationViewModel()
    var disposeBag = DisposeBag()
    
    static func instance() -> FormValidationViewController {
        let storyboard = UIStoryboard.init(name: "FormValidation", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "FormValidation") as! FormValidationViewController
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailInput.rx.text.orEmpty.bind(to: formValidationViewModel.account).disposed(by: disposeBag)
        passwordInput.rx.text.orEmpty.bind(to: formValidationViewModel.password).disposed(by: disposeBag)
        formValidationViewModel.isValidated.bind(to: loginButton.rx.isEnabled).disposed(by: disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func loginOnpressHandler(_ sender: UIButton) {
        print("Button Clicked!")
    }
}
