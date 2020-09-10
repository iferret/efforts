//
//  Algorithm.swift
//  Efforts
//
//  Created by tramp on 2020/9/10.
//  Copyright © 2020 tramp. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

/// Algorithms
struct Algorithm {
    internal let title: String
    internal let summary: String
    internal let filename: String
    internal let bundle: Bundle
    
    /// 构建
    /// - Parameters:
    ///   - title: 标题
    ///   - summary: 摘要
    ///   - filename: 文件名
    ///   - bundle: Bundle
    internal init(title: String, summary: String, filename: String, bundle: Bundle = .main) {
        self.title = title
        self.summary = summary
        self.filename = filename
        self.bundle = bundle
    }
}
