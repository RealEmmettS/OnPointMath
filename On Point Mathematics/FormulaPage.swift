//
//  FormulaPage.swift
//  On Point Mathematics
//
//  Created by Emmett Shaughnessy on 8/14/19.
//  Copyright © 2019 Emmett S. All rights reserved.
//

import UIKit

class FormulaPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if UnivCheckEasyModeState() == 1{
            performSegue(withIdentifier: "EasyMode", sender: self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UnivCheckEasyModeState() == 1{
            performSegue(withIdentifier: "EasyMode", sender: self)
        }
    }

   

}
