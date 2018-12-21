//
//  Food.swift
//  Mysnake
//
//  Created by 20161104612 on 2018/12/21.
//  Copyright © 2018 20161104612. All rights reserved.
//

import UIKit

let foodx = 30
let foody = 30
let screenx = 345
let screeny = 570

class Food: UIButton{
    
    init(view: UIView) {
        //初始化在屏幕中央
        super.init(frame: CGRect(x: 180, y: 330, width: foodx, height: foody))
        //设置食物颜色为蓝色
        backgroundColor = UIColor.blue
        //将food添加到主view中显示
        view.addSubview(self)
        //注册点击事件
       addTarget(self, action: Selector(("changeFood:")), for: .touchDown)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeFood(button:UIButton) {
        button.frame.origin = randomPos()
    }
    
    func randomNum(num:Int) -> Int {
        return Int(arc4random_uniform(UInt32(num)))
    }
    
    func randomPos() -> CGPoint {
        func round(value:Int) -> Int {
            return (value/foodx) * foodx
        }
        
        let curx = round(value: randomNum(num: screenx))
        let cury = round(value: 60 + randomNum(num: screeny))
        
        return CGPoint(x :curx, y: cury)
    }
}
