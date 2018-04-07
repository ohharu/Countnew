//
//  ViewController.swift
//  Countnew
//
//  Created by 金崎健汰 on 2018/03/30.
//  Copyright © 2018年 LIfe is Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number:Int = 0
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func changecolor(){
        if number >= 10{
            label.textColor = UIColor.red
        }
        else if number <= -10{
            label.textColor = UIColor.blue
        }
        else{
            label.textColor = UIColor.black
        }
    }
    
    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
        changecolor()
    }
    @IBAction func minus(){
        number = number - 1
        label.text = String(number)
        if number >= 10{
            label.textColor = UIColor.red
        }
        else if number <= -10{
            label.textColor = UIColor.blue
        }
        else{
            label.textColor = UIColor.black
        }
    }
    @IBAction func time(){
        number = number * number
        label.text = String(number)
        changecolor()
    }
    @IBAction func devide(){
        number = number / number
        label.text = String(number)
        changecolor()
    }
    @IBAction func clear(){
        number = 0
        label.text = String(number)
        label.textColor = UIColor.black
    }
}//コメント

