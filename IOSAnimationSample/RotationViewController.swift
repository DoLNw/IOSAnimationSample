//
//  RotationViewController.swift
//  IOSAnimationSample
//
//  Created by 王嘉诚 on 2018/2/12.
//  Copyright © 2018年 DoLNw. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var wheelImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var angle = CGFloat(Double.pi)
    
    func spin(){
        angle += 360
        UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
            self.wheelImage.transform = CGAffineTransform(rotationAngle: self.angle)
        }) { (finished) in
            self.spin()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.spin()
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
