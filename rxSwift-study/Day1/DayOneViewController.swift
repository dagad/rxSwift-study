//
//  DayOneViewController.swift
//  rxSwift-study
//
//  Created by dagad on 05/12/2018.
//  Copyright © 2018 estsoft. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class DayOneViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var filterLabel: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textFieldLabel: UILabel!
    
    var disposeBag = DisposeBag()
    var labelCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.rx
            .tap
            .bind(onNext: tapButton)
            .disposed(by: disposeBag)
        
        textField.rx
            .text
            .subscribe(typeText)
            .disposed(by: disposeBag)
        
        
    }
}

extension DayOneViewController {
    private func tapButton() {
        labelCount += 1
        label.text = String(labelCount)
    }
    
    private func typeText(_ event: Event<String?>) {
        if let text = event.element as? String {
            textFieldLabel.text = text
        }
    }
}
