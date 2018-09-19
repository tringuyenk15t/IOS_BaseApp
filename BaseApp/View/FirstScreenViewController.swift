//
//  FirstScreenViewController.swift
//  BaseApp
//
//  Created by tri nguyen on 8/31/18.
//  Copyright © 2018 tri nguyen. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import SkyFloatingLabelTextField

class FirstScreenViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var textInput: SkyFloatingLabelTextField!
    
    var firstScreenViewModel = FirstScreenViewModel()
    var disposedBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textInput.rx.text.orEmpty.bind(to: firstScreenViewModel.text).disposed(by: disposedBag)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
