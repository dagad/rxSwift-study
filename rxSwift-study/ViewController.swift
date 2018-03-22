//
//  ViewController.swift
//  rxSwift-study
//
//  Created by Sangyeol Kang on 2018. 3. 21..
//  Copyright © 2018년 estsoft. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    private let disposeBag = DisposeBag()
    private let viewModel = ViewModel()

    
    @IBOutlet var button: UIButton!
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewModelBind()
        
        button.rx.tap
            .bind(onNext:{ [unowned self] in
                self.textLabel.text = self.textField.text
            })
            .disposed(by: disposeBag)
        

        
//        flag.asObservable()
//            .map{!$0}
//            .subscribe { event in
//                event.element }.disposed(by: disposeBag)
    
    }

    func reload() {
        
    }
    
    func viewModelBind() {
        
        let input = viewModel.Input(buttonTrigger: self.button.rx.tap.asObservable(), textField.rx.text.orEmpty.asObservable())
        
        self.viewModel.bind(withInput: input)
        
        
        
    }


}


