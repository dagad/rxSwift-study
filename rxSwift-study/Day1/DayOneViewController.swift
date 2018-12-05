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
    
    var disposeBag = DisposeBag()
    var labelCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.rx
            .tap
            .bind(onNext: tapButton)
            .disposed(by: disposeBag)
    }

}

extension DayOneViewController {
    private func tapButton() {
        labelCount += 1
        label.text = String(labelCount)
    }
}
