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

    @IBOutlet var button: UIButton!
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var flag = Variable(false)
    var list = PublishSubject<[String]>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.rx.tap
            .bind(onNext:reload)
            .disposed(by: disposeBag)
        
        flag.asObservable()
            .map{!$0}
            .subscribe { event in
                event.element }.disposed(by: disposeBag)
        
        
    
    }

    func reload() {
        
    }


}

