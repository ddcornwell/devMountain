//
//  ViewController.swift
//  My Cal
//
//  Created by DANIEL CORNWELL on 10/23/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber = false
    
    var brain = CalendarBrain()
    
    @IBAction func appendDigit(_ sender: UIButton) {
       let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
        display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    
    @IBAction func operate(_ sender: UIButton) {
        if userIsInTheMiddleOfTypingANumber {
        enter()
    }
        if let Operation = sender.currentTitle {
            if let result = brain.performOperation(symbol: Operation) {
            displayVaule = result
            } else {
                displayVaule = 0
            }
          }
       }
    

    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        if let result = brain.pushOperand(operand: displayVaule) {
        displayVaule = result
        } else {
            displayVaule = 0
        }
    }
    var displayVaule: Double {
        get{
            return NumberFormatter().number(from: display.text!)!.doubleValue
        }
        set{
        display.text = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
        }
    }
}

