//
//  UIViewController+Extension.swift
//  tabViewTest
//
//  Created by m_okama on 2017/04/27.
//  Copyright © 2017年 hokama. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func setupTabView() {
        
        // Viewの読み込み
        let tabView = TabView.instance()
        tabView.delegate = self as? TabTapProtocol
        self.view.addSubview(tabView)

        // 左
        tabView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        // 右
        tabView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        // 下
        tabView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        // 高さ
        tabView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        tabView.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
