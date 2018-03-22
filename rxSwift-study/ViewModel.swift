//
//  ViewModel.swift
//  rxSwift-study
//
//  Created by Sangyeol Kang on 2018. 3. 22..
//  Copyright © 2018년 estsoft. All rights reserved.
//

import RxSwift
import RxCocoa

struct ViewModel {
    
    let textSubject: PublishSubject<String>
    
    func setup() {
        
    }
    
//    func bind(withInput input: Input) -> Output {
//        let saveText = input.buttonTrigger.bind {
//            return Output(text:Observable)
//        }
//
//        textSubject.subscribe { event in
//            let output = Output(text: event.element)
//
//        }
//
//
//    }
    
    
}

extension ViewModel {
    
    struct Input {
        let buttonTrigger: Observable<Void>
        let text: Observable<String>
        
    }
    
    struct Output {
        let text: Observable<String>
    }
}
