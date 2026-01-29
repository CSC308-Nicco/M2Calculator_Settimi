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
        let var1 = Int(operand1Text.text!)!
        let var2 = Int(operand2Text.text!)!
        let op = selectOperator.title(for: .normal)
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

