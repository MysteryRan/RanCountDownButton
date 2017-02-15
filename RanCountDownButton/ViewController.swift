//
//  ViewController.swift
//  RanCountDownButton
//
//  Created by 浮生若梦 on 2017/2/15.
//  Copyright © 2017年 Mystery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendPswClick(_ sender: RanCountDownButton) {
        
        //改变
        sender.isEnabled = false
        sender.starCountDownWithSeconf(secondCount: 60)
        sender.countChanging { (countBtn, second) -> (String) in
            return "\(second)秒"
        }
        
        //结束
        sender.countFinish { (countBtn, sencond) -> (String) in
            countBtn.isEnabled = true
            return "重新获取"
        }
    }
}

