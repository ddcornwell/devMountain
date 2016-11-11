//
//  ViewController.swift
//  simple Name app for iPhone
//
//  Created by DANIEL CORNWELL on 10/9/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtEnterName: UITextField!
    @IBOutlet weak var LBLName: UILabel!
    

    var userName : String = "Name"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPrintNameACTION(_ sender: UIButton) {
        namePrintingLogic()
        
        
    }

    
    func namePrintingLogic(){
        userName = txtEnterName.text!
        LBLName.text = userName
    }
    
}

