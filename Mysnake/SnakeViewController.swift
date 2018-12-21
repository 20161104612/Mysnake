//
//  ViewController.swift
//  Mysnake
//
//  Created by 20161104612 on 2018/12/21.
//  Copyright © 2018 20161104612. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //增加food属性
    var food :Food!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //初始化food
        food = Food(view: view)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

