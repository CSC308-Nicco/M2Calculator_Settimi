//
//  ViewController.swift
//  M2Calculator_Settimi
//
//  Created by Settimi, Niccolo B. on 1/27/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var operand1Text: UITextField!
    @IBOutlet weak var operand2Text: UITextField!
    @IBOutlet weak var resultText: UILabel!
    
    var currentOperator: Int = 0
    @IBOutlet weak var selectOperator: UIButton!
    @IBAction func operatorBtn(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        
        let plusAction = UIAlertAction(title: "+ (plus)", style: .default) {_ in self.selectOperator.setTitle("+", for: .normal)}
        
        let minusAction = UIAlertAction(title: "- (minus)", style: .default) {_ in self.selectOperator.setTitle("-", for: .normal)}
        
        let multiplyAction = UIAlertAction(title: "* (multiply)", style: .default) {_ in self.selectOperator.setTitle("*", for: .normal)}
        
        let divideAction = UIAlertAction(title: "/ (divide)", style: .default) {_ in self.selectOperator.setTitle("/", for: .normal)}
        
        actionSheet.addAction(plusAction)
        actionSheet.addAction(minusAction)
        actionSheet.addAction(multiplyAction)
        actionSheet.addAction(divideAction)
        
        present(actionSheet, animated: true)
    }
    
    @IBAction func calculateBtn(_ sender: UIButton) {
        var var1: Int
        var var2: Int
        let op = selectOperator.title(for: .normal) ?? "?"
        
        if let op1Text = operand1Text.text, let int1 = Int(op1Text)
        {
            var1 = int1
        }
        else
        {
            var1 = 0
            operand1Text.text = "0"
        }
        
        if let op2Text = operand2Text.text, let int2 = Int(op2Text)
        {
            var2 = int2
        }
        else
        {
            var2 = 0
            operand2Text.text = "0"
        }
        
        var result: Int
        
        switch (op)
        {
            case "+":
                result = var1 + var2
            case "-":
                result = var1 - var2
            case "*":
                result = var1 * var2
            case "/":
                result = var1 / var2
            default:
                result = 0
        }
        
        resultText.text = "\(result)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

