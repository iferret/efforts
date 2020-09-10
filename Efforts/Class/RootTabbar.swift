//
//  RootTabbar.swift
//  Efforts
//
//  Created by tramp on 2020/9/10.
//  Copyright © 2020 tramp. All rights reserved.
//

import UIKit
import SnapKit

/// RootTabbar
class RootTabbar: UITabBar {
    
    // MARK: - 私有属性
    
    
    // MARK: - 生命周期
    /// 构建
    /// - Parameter frame: CGRect
    internal override init(frame: CGRect) {
        super.init(frame: frame)
        // 初始化
        initialize()
    }
    
    /// 构建
    /// - Parameter coder: NSCoder
    internal required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension RootTabbar {
    
    /// 初始化
    private func initialize() {
        
        barTintColor = .secondarySystemFill
        let maskLayer = CAShapeLayer()
        let _frame: CGRect = .init(x: 16.0, y: 0.0, width: bounds.width - 32.0, height: bounds.height + 8.0)
        maskLayer.frame = _frame
        maskLayer.path = UIBezierPath.init(roundedRect: .init(x: 0.0, y: 0.0, width: bounds.width - 32.0, height: bounds.height + 8.0),
                                           byRoundingCorners: [.allCorners],
                                           cornerRadii: CGSize(width: (bounds.width - 32.0) * 0.5, height: (bounds.height + 8.0) * 0.5)).cgPath
        layer.mask = maskLayer
    
    }
    
}
