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
    @IBOutlet weak var cookieButton: UIButton!
    var count:Int = 40
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        countLabel.text = String(count)
        self.cookieButton.imageView?.contentMode = .scaleAspectFit
        self.cookieButton.contentHorizontalAlignment = .fill
        self.cookieButton.contentVerticalAlignment = .fill
        self.cookieButton.imageEdgeInsets = UIEdgeInsets(top: 400, left: 400, bottom: 400, right: 400)
        let cookieImage = UIImage(named: "cookie1")
        self.cookieButton.setImage(cookieImage, for: .normal)
    }

    @IBAction func cookieButton(_ sender: Any) {
        count -= 1
        countLabel.text = String(count)
        if (count == 0) {
            cookieButton.isEnabled = false
        }
    }
    
}

