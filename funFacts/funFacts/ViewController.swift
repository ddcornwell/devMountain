//
//  ViewController.swift
//  funFacts
//
//  Created by DANIEL CORNWELL on 9/28/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var funFactLabel: UILabel!
    
         let factModel = FactModel()
    
    @IBOutlet weak var funFactButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     funFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randomColor = colorModel().getRandom()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factModel.getRandomFact()
    }

}
