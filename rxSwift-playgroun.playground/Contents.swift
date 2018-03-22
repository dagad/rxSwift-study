//: Playground - noun: a place where people can play

import UIKit
import RxSwift
import RxCocoa


let source = Observable<Int>.create { observer in
    for i in 1...5 {
        observer.on(.next(i))
    }
    observer.on(.completed)
    
    return Disposables.create {
        print("disposed")
    }
}

source.subscribe {
    print($0)
}
