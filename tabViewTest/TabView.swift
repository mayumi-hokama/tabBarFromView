//
//  TabView.swift
//  tabViewTest
//
//  Created by m_okama on 2017/04/27.
//  Copyright © 2017年 hokama. All rights reserved.
//

import UIKit

enum TabItemType {
    case simulation
    case chat
    case info
}

protocol TabTapProtocol: class {
    // tapした時のプロトコル
    func tapTab(type: TabItemType)
}

extension TabTapProtocol where Self: UIViewController {
    
    func tapTab(type: TabItemType) {
        // TODO: extensionだなこれ
        print("tapされた")
        switch type {
        case .chat:
            let sb = UIStoryboard(name: "B", bundle: Bundle.main)
            let vc: UIViewController = sb.instantiateInitialViewController()! as! BViewController
            self.navigationController?.present(vc, animated: true, completion: nil)
        case .info:
            let sb = UIStoryboard(name: "C", bundle: Bundle.main)
            let vc: UIViewController = sb.instantiateInitialViewController()! as! CViewController
            self.addChildViewController(vc)
            self.view.addSubview(vc.view)
            vc.didMove(toParentViewController: self)
        case .simulation:
            let sb = UIStoryboard(name: "A", bundle: Bundle.main)
            let vc: UIViewController = sb.instantiateInitialViewController()! as! AViewController
            self.addChildViewController(vc)
            self.view.addSubview(vc.view)
            vc.didMove(toParentViewController: self)
        }
    }
    
}

class TabView: UIView {

    @IBOutlet weak var simulationButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var infoButton: UIButton!
    
    // delegate
    weak var delegate: TabTapProtocol?
    
    class func instance() -> TabView {
        return UINib(nibName: "TabView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! TabView
    }
    
    func setup() {
    }
    
    @IBAction func tapSimulation(_ sender: UIButton) {
        self.delegate?.tapTab(type: .simulation)
    }
    
    @IBAction func tapChat(_ sender: UIButton) {
        self.delegate?.tapTab(type: .chat)
    }
    
    @IBAction func tapInfo(_ sender: UIButton) {
        self.delegate?.tapTab(type: .info)
    }
}
