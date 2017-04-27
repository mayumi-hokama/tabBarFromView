//
//  ViewController.swift
//  tabViewTest
//
//  Created by m_okama on 2017/04/27.
//  Copyright © 2017年 hokama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // なんやかんやー
        let sb = UIStoryboard(name: "A", bundle: Bundle.main)
        let vc: UIViewController = sb.instantiateInitialViewController()! as! AViewController
        self.addChildViewController(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

