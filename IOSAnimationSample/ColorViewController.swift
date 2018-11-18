//
//  ColorViewController.swift
//  IOSAnimationSample
//
//  Created by 王嘉诚 on 2018/2/12.
//  Copyright © 2018年 DoLNw. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var orange: UIView!
    @IBOutlet weak var label: UILabel!
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
            self.orange.backgroundColor = UIColor.blue
            self.label.textColor = UIColor.orange
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
