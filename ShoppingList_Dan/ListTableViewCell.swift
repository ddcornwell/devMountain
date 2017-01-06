//
//  ListTableViewCell.swift
//  ShoppingList_Dan
//
//  Created by DANIEL CORNWELL on 12/16/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var listLabel: UILabel!

    @IBOutlet weak var isCompleteButton: UIButton!
    
    var delegate: ListTableViewCellDelegate?
    
    
    func update(cellWithList list: List) {
        listLabel.text = list.title
    }
    
    func updateButtonImage(isComplete: Bool) {
        
        if isComplete {
            isCompleteButton.setImage(#imageLiteral(resourceName: "complete_480"), for: .normal)
        } else {
            isCompleteButton.setImage(#imageLiteral(resourceName: "incomplete_480 9.06.41 AM"), for: .normal)
        }
    }
    
    
    @IBAction func isCompleteButtonTapped(_ sender: Any) {
         delegate?.toggleIsComplete(self)
    }
    
    
    

    
    
  
}
    protocol ListTableViewCellDelegate {
        func toggleIsComplete(_ sender: ListTableViewCell)
    }
   


