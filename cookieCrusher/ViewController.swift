//
//  ViewController.swift
//  cookieCrusher
//
//  Created by 曽我百華 on 2021/07/14.
//  Copyright © 2021 kashiharaLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    var count:Int = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.text = String(count)
    }

    @IBAction func cookieButton(_ sender: Any) {
        count -= 1
        countLabel.text = String(count)
    }
    
}

