//
//  ViewControllerModal1.swift
//  cookieCrusher
//
//  Created by 加藤慎融 on 2021/07/27.
//  Copyright © 2021 kashiharaLab. All rights reserved.
//

import UIKit

class ViewControllerModal1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAction1(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func buttonAction2(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func buttonAction3(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func buttonAction4(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func startButton1(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func startButton2(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func startButton3(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func startButton4(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
