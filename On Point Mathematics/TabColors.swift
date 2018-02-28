//
//  TabColors.swift
//  On Point Mathematics
//
//  Created by Emmett S. on 2/27/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//

import Foundation
import UIKit

class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make unselected icons white
        self.tabBar.unselectedItemTintColor = UIColor.white
    }
}
