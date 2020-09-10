//
//  AlgorithmProxy.swift
//  Efforts
//
//  Created by tramp on 2020/9/10.
//  Copyright © 2020 tramp. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

struct AlgorithmProxy {
    
    
    /// [Algorithm]
    private var _items: [Algorithm] = []
    /// AsyncSubject<[Algorithm]>
    internal private(set) lazy var  items: AsyncSubject<[Algorithm]> = {
        let _items = AsyncSubject<[Algorithm]>.init()
        return _items
    }()
    
    
}

extension AlgorithmProxy {
    
    /// increase
    internal mutating func increase() {
        _items.append(.init(title: "两数之和", summary: "sum", filename: "sum.md"))
        items.on(.next(_items))
    }
}
