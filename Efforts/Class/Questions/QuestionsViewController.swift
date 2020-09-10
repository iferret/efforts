//
//  QuestionsViewController.swift
//  Efforts
//
//  Created by tramp on 2020/9/9.
//  Copyright © 2020 tramp. All rights reserved.
//

import UIKit
import SnapKit

class QuestionsViewController: UIViewController {
    
    // MARK: - 私有属性
    
    /// UITableView
    private lazy var tableView: UITableView = {
        let _tableView = UITableView.init(frame: .zero, style: .plain)
        _tableView.backgroundColor = .clear
        return _tableView
    }()
    
    // MARK: - 生命周期
    
    /// viewDidLoad
    internal override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 初始化
        initialize()
    }
    
    
}

// MARK: - 自定义
extension QuestionsViewController {
    /// 初始化
    private func initialize() {
        view.backgroundColor = .systemBackground
        
        // 布局
        view.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
}
