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
    var cookieImage = UIImage(named: "cookie1")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        assignBackground()
        self.cookieButton.imageView?.contentMode = .scaleAspectFit
        self.cookieButton.contentHorizontalAlignment = .fill
        self.cookieButton.contentVerticalAlignment = .fill
        self.cookieButton.imageEdgeInsets = UIEdgeInsets(top: 400, left: 400, bottom: 400, right: 400)
        self.cookieButton.setImage(cookieImage, for: .normal)
    }
    
    func assignBackground() {
        let background = UIImage(named: "background")
        var imageView : UIImageView
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        countLabel.text = String(count)
    }

    @IBAction func cookieButton(_ sender: Any) {
        //let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //let viewControllor_1 = storyboard.instantiateViewController(withIdentifier: "View_fig_1") as! UINavigationController
        
        count -= 1
        countLabel.text = String(count)
        if (count == 30){
            cookieImage = UIImage(named: "cookie2")
            self.cookieButton.setImage(cookieImage, for: .normal)
            self.performSegue(withIdentifier: "View_fig_1", sender: nil)
        }
        if (count == 20){
            cookieImage = UIImage(named: "cookie3")
            self.cookieButton.setImage(cookieImage, for: .normal)
            self.performSegue(withIdentifier: "View_fig_2", sender: nil)
        }
        if (count == 10){
            cookieImage = UIImage(named: "cookie4")
            self.cookieButton.setImage(cookieImage, for: .normal)
            self.performSegue(withIdentifier: "View_fig_3", sender: nil)
        }
        if (count == 0) {
            cookieImage = UIImage(named: "cookie5")
            self.cookieButton.setImage(cookieImage, for: .normal)
            cookieButton.isEnabled = false
            self.performSegue(withIdentifier: "View_fig_4", sender: nil)
        }
    }
    
    @IBAction func countReset(_ sender: Any) {
        count = 40
        cookieImage = UIImage(named: "cookie1")
        self.cookieButton.setImage(cookieImage, for: .normal)
    }
    
    @IBAction func toStart(_ sender: Any) {dismiss(animated: true, completion: nil)    }
}

