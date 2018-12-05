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
    
    var isHidden: BehaviorSubject<Bool>
    
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
