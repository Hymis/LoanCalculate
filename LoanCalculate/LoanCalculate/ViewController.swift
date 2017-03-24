//
//  ViewController.swift
//  LoanCalculate
//
//  Created by 上海海洋大学 on 17/3/24.
//  Copyright © 2017年 上海海洋大学. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loanAmountfield: UITextField!
    
    @IBOutlet weak var loanTermField: UITextField!
    
    @IBOutlet weak var interestRateField: UITextField!
    
    

    
    @IBOutlet weak var Result: UILabel!
    
    @IBAction func simpleButton(_ sender: Any) {
    let calculate1 = simpleCalculate()
    Result.text=calculate1.calculate(loanAmount:Double(loanAmountfield.text!)!,years:Int(loanTermField.text!)!,interestRate:Double(interestRateField.text!)!).description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class simpleCalculate {
    func calculate(loanAmount:Double,years:Int,interestRate:Double)->Double{
    let rate = interestRate/100
    let interest = loanAmount * rate * Double(years)
    return loanAmount + interest
  }
}
