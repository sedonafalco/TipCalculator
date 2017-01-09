//
//  ViewController.swift
//  Tip Calc 2
//
//  Created by Sedona Falco on 10/18/16.
//  Copyright © 2016 Sedona Falco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    var multiply = 0.0
    var numberOfPeople = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tenPercentButton(_ sender: AnyObject) {
        multiply = 0.10
        calculate()
    }
    @IBAction func fifteenPercentButton(_ sender: AnyObject) {
        multiply = 0.15
        calculate()
    }
    @IBAction func twentyPercentButton(_ sender: AnyObject) {
        multiply = 0.20
        calculate()
    }
    @IBAction func twentyfivePercentButton(_ sender: AnyObject) {
        multiply = 0.25
        calculate()
    }
      
    @IBAction func upButton(_ sender: AnyObject) {
        let groupOfNumber = Int(numberOfPeopleLabel.text!)
        let addPoint = groupOfNumber! + 1
        numberOfPeople += 1
        numberOfPeopleLabel.text = "\(addPoint)"
        calculate()
    }
    @IBAction func downButton(_ sender: AnyObject) {
        let groupOfNumber = Int(numberOfPeopleLabel.text!)
        if(Int(numberOfPeopleLabel.text!)! > 1) {
            let subPoint = groupOfNumber! - 1
            numberOfPeopleLabel.text = "\(subPoint)"
            numberOfPeople -= 1
            calculate()
        }
    }
    
    func calculate()
    {
        if let amount = Double(billAmountTextField.text!){
            let tipAmount = amount * multiply
            let tip = tipAmount / numberOfPeople
            let grandTotal = amount / numberOfPeople + tip
            let formatGT = String(format: "$%.2f", grandTotal)
            totalAmountLabel.text = "Total: \(formatGT)"
            let formatT = String(format: "$%.2f", tip)
            tipLabel.text = "Tip: \(formatT)"
            //let grandTotal = total / numberOfPeople
        }
    }
}




