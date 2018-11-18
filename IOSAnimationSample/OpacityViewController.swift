//
//  OpacityViewController.swift
//  IOSAnimationSample
//
//  Created by 王嘉诚 on 2018/2/12.
//  Copyright © 2018年 DoLNw. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    @IBOutlet weak var oragen: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1) {
            self.oragen.alpha = 0.1
        }
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
