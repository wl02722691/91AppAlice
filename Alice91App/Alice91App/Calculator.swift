//
//  ViewController.swift
//  Alice91App
//
//  Created by 張書涵 on 2018/11/22.
//  Copyright © 2018年 AliceChang. All rights reserved.
//

import UIKit

class Calculator: UIViewController {


    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var GCDtext: UILabel!
    
    @IBOutlet weak var LCMtext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    @IBAction func calculate(_ sender: UIButton) {
        
        guard textField1.text?.count != 0 && textField2.text?.count != 0 else{
            return
            
        }
        
        guard let text1 = textField1.text else {
            return
        }
        
        guard let text2 = textField2.text else {
            return
        }
        
        let GCDanswer = GCD(firstNumber: Int(text1) ?? 0, secondNumber: Int(text2) ?? 0)
        
        let LCManswer = LCM(firstNumber: Int(text1) ?? 0, secondNumber: Int(text2) ?? 0)
 
        GCDtext.text = "最大公因數：\(GCDanswer)"
        LCMtext.text = "最小公倍數：\(LCManswer)"
        
    }
    
    
    
    
    func GCD(firstNumber: Int, secondNumber: Int) -> Int {
        
        var aArray: [Int] = []
        var maxNumber = 0
        
        for i in 1...firstNumber{
            
            if firstNumber % i == 0 {
                
                aArray.append(i)
                
            }
            
        }
        
        for i in 1...secondNumber{
            
            if secondNumber % i == 0 {
                
                aArray.append(i)
            }
            
        }
        
        aArray.sort()
        
        for i in 0...aArray.count-2 {
            
            if aArray[i] == aArray[i+1] {
                
                maxNumber = aArray[i]
                
            }
            
        }
        
        return maxNumber
        
    }
    
    func LCM(firstNumber: Int, secondNumber: Int) -> Int {
        
        let GCD = self.GCD(firstNumber: firstNumber, secondNumber: secondNumber)
        
        let multiplication = firstNumber * secondNumber
        
        let finalAnswer = multiplication / GCD
        
        return finalAnswer
        
        
    }

}

