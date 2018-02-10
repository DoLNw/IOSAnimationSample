//
//  PositionViewController.swift
//  IOSAnimationSample
//
//  Created by 王嘉诚 on 2018/2/10.
//  Copyright © 2018年 DoLNw. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet weak var orangeSquare: UIView!
    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var purpleSqure: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.largeTitleDisplayMode = .never
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        UIView.animate(withDuration: 1) {
            self.orangeSquare.center.x = self.view.bounds.width - self.orangeSquare.center.x
        }
        
        UIView.animate(withDuration: 1, delay: 0.3, options: .curveEaseIn, animations: {
            self.blueSquare.center.y = self.view.bounds.height - self.blueSquare.center.y
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.6, options: .curveEaseInOut, animations: {
            self.purpleSqure.center.y = self.view.bounds.height - self.purpleSqure.center.y
            self.purpleSqure.center.x = self.view.bounds.width - self.purpleSqure.center.x
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
