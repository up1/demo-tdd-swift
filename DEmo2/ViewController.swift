//
//  ViewController.swift
//  DEmo2
//
//  Created by Somkiat Puisungnoen on 4/3/2563 BE.
//  Copyright © 2563 Somkiat Puisungnoen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(false)
        super.touchesBegan(touches, with: event)
    }

}

