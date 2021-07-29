//
//  ViewControllerModal2.swift
//  cookieCrusher
//
//  Created by 加藤慎融 on 2021/07/30.
//  Copyright © 2021 kashiharaLab. All rights reserved.
//

import UIKit

class ViewControllerModal2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        assignBackground()

        // Do any additional setup after loading the view.
    }
    
    
    func assignBackground() {
        let background = UIImage(named: "sutera")
        var imageView : UIImageView
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    
    
    @IBAction func buttonAction2(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func startButton2(_ sender: Any) {
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
