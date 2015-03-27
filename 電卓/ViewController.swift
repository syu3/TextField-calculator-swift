//
//  ViewController.swift
//  電卓
//
//  Created by 加藤 周 on 2015/03/27.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var field2: UITextField!
    @IBOutlet weak var field1: UITextField!
    
    @IBOutlet weak var kigou: UILabel!
    
    @IBOutlet weak var answer: UILabel!
    
    @IBOutlet weak var ikoru: UILabel!
    
    var syu = 0;
    
    var number1 = 0 ;
    var number2 = 0 ;
    var ansa = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
//        var string1 : String = field1.text
//        var string2 : String = field2.text

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func plus(sender: AnyObject) {
        number1 = field1.text.toInt()!
        
        syu=0
        kigou.text = "+"
    }
    @IBAction func mainaus(sender: AnyObject) {
        number1 = field1.text.toInt()!
        syu=1
        kigou.text = "-"
    }
    @IBAction func kakeru(sender: AnyObject) {
        number1 = field1.text.toInt()!
        syu=2
        kigou.text = "×"
    }
    @IBAction func waru(sender: AnyObject) {
        number1 = field1.text.toInt()!
        syu=3
        kigou.text = "÷"
    }
    @IBAction func ikoru(sender: AnyObject) {
        number2 = field2.text.toInt()!
        if (syu == 0){
            
            ansa=number1+number2
            answer.text = String(ansa)
        }else if (syu == 1){
            ansa=number1-number2
            answer.text = String(ansa)
        }else if (syu == 2){
            
            ansa=number1*number2
            answer.text = String(ansa)
        }else{
            ansa=number1/number2
            answer.text = String(ansa)
        }
        
    }
    
    
}

