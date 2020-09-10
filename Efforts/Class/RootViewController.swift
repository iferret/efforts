//
//  RootViewController.swift
//  Efforts
//
//  Created by tramp on 2020/9/9.
//  Copyright © 2020 tramp. All rights reserved.
//

import UIKit

/// RootViewController
class RootViewController: UITabBarController {
    
    // MARK: - 生命周期
    
    /// viewDidLoad
    internal override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 初始化
        initialize()
        
    }
    
    /// traitCollectionDidChange
    /// - Parameter previousTraitCollection: UITraitCollection
    internal override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        children.forEach { (navi) in
            navi.tabBarItem.selectedImage = navi.tabBarItem.selectedImage?.withTintColor(.systemOrange).withRenderingMode(.alwaysOriginal)
            navi.tabBarItem.image = navi.tabBarItem.image?.withTintColor(.secondaryLabel).withRenderingMode(.alwaysOriginal)
        }
    }
    
}

extension RootViewController {
    
    /// 初始化
    private func initialize() {
        view.backgroundColor = .systemBackground
        tabBar.barTintColor = .systemBackground
        
        // 添加子控制器
        do {
            let controller = GuideViewController.init()
            controller.title = "指导"
            let navi = UINavigationController.init(rootViewController: controller)
            navi.tabBarItem.title = "指导"
            navi.tabBarItem.selectedImage = UIImage.init(named: "icn_guide")?.withTintColor(.systemOrange).withRenderingMode(.alwaysOriginal)
            navi.tabBarItem.image = UIImage.init(named: "icn_guide")?.withTintColor(.secondaryLabel).withRenderingMode(.alwaysOriginal)
            addChild(navi)
        }
        
        do {
            let controller = QuestionsViewController.init()
            controller.title = "问题"
            let navi = UINavigationController.init(rootViewController: controller)
            navi.tabBarItem.title = "问题"
            navi.tabBarItem.selectedImage = UIImage.init(named: "icn_question")?.withTintColor(.systemOrange).withRenderingMode(.alwaysOriginal)
            navi.tabBarItem.image = UIImage.init(named: "icn_question")?.withTintColor(.secondaryLabel).withRenderingMode(.alwaysOriginal)
            addChild(navi)
        }
        
        do {
            let controller = AlgorithmViewController.init()
            controller.title = "算法"
            let navi = UINavigationController.init(rootViewController: controller)
            navi.tabBarItem.title = "算法"
            navi.tabBarItem.selectedImage = UIImage.init(named: "icn_algorithm")?.withTintColor(.systemOrange).withRenderingMode(.alwaysOriginal)
             navi.tabBarItem.image = UIImage.init(named: "icn_algorithm")?.withTintColor(.secondaryLabel).withRenderingMode(.alwaysOriginal)
            addChild(navi)
        }
        
        children.forEach { (navi) in
            guard let navi = navi as? UINavigationController else { return }
            navi.navigationBar.barTintColor = .systemBackground
            navi.tabBarItem.setTitleTextAttributes([.foregroundColor: UIColor.systemOrange], for: .selected)
            navi.tabBarItem.setTitleTextAttributes([.foregroundColor: UIColor.secondaryLabel], for: .normal)
        }
    }
}
