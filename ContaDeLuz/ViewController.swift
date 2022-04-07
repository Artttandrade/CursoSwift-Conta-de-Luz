//
//  ViewController.swift
//  ContaDeLuz
//
//  Created by Aluno02 on 06/04/22.
//  Copyright © 2022 Artur Andrade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lastValueTextField: UITextField?
    @IBOutlet var currentValueTextField: UITextField?
    @IBOutlet var valueDiffLabel: UILabel?
    let diffLabelText: String = "O valor da conta é: "
    let taxValue: Double = 1.8
    
    @IBAction func calcular (){
        
        guard let lastValue = lastValueTextField?.text else {
            return
        }
        
        guard let currentValue = currentValueTextField?.text else {
            return
        }
        
        let lastValueInt: Int = Int(lastValue) ?? 0
        let currentValueInt: Int = Int(currentValue) ?? 0
        
        let diffValue: Int = currentValueInt - lastValueInt;
        
        let billValue: Double = Double(diffValue) * taxValue;
        
        print("Calcular:-- \(billValue)")
        
        valueDiffLabel?.text = "\(diffLabelText) \(String(billValue))"
        
    }


}

