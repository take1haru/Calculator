//
//  ViewController.swift
//  Calculator
//
//  Created by Takeuchi Haruki on 2016/02/06.
//  Copyright © 2016年 Takeuchi Haruki. All rights reserved.
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
    
    @IBOutlet var label: UILabel!
    @IBOutlet var opelabel: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var anslabel: UILabel!
    
    var number: Int = 0
    var number2: Int = 0
    var operation: Int = 0
    
    @IBAction func clear() {
        label.text = "0"
        label2.text = " "
        opelabel.text = " "
        number = 0
        number2 = 0
    }
    
    @IBAction func select1() {
        number = number*10 + 1
        label.text = String(number)
    }
    
    @IBAction func select2() {
        number = number*10 + 2
        label.text = String(number)
    }
    
    @IBAction func select3() {
        number = number*10 + 3
        label.text = String(number)
    }
    
    @IBAction func select4() {
        number = number*10 + 4
        label.text = String(number)
    }
    
    @IBAction func select5() {
        number = number*10 + 5
        label.text = String(number)
    }
    
    @IBAction func select6() {
        number = number*10 + 6
        label.text = String(number)
    }
    
    @IBAction func select7() {
        number = number*10 + 7
        label.text = String(number)
    }
    
    @IBAction func select8() {
        number = number*10 + 8
        label.text = String(number)
    }
    
    @IBAction func select9() {
        number = number*10 + 9
        label.text = String(number)
    }
    
    @IBAction func select0() {
        number = number*10 + 0
        label.text = String(number)
    }

    @IBAction func plus() {
        label.text = "0"
        
        operation = 1
        opelabel.text = "+"
        number2 = number
        label2.text = String(number2)
        number = 0
    }
    
    @IBAction func minus() {
        label.text = "0"
        
        operation = 2
        opelabel.text = "-"
        number2 = number
        label2.text = String(number2)
        number = 0
    }
    
    @IBAction func times() {
        label.text = "0"
        
        operation = 3
        opelabel.text = "*"
        number2 = number
        label2.text = String(number2)
        number = 0
    }
    
    @IBAction func devide() {
        label.text = "0"
        
        operation = 4
        opelabel.text = "/"
        number2 = number
        label2.text = String(number2)
        number = 0
    }

    @IBAction func equal() {
        if(operation==1){
            anslabel.text = String(number2+number)
        }
        if(operation==2){
            anslabel.text = String(number2-number)
        }
        if(operation==3){
            anslabel.text = String(number2*number)
        }
        if(operation==4){
            anslabel.text = String(number2/number)
        }
    }
    
}

