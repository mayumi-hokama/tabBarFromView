//
//  AViewController.swift
//  tabViewTest
//
//  Created by m_okama on 2017/04/27.
//  Copyright © 2017年 hokama. All rights reserved.
//

import UIKit

class AViewController: UIViewController, TabTapProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
