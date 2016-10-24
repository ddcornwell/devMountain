//
//  MealTableViewCell.swift
//  Food Tracker 000
//
//  Created by DANIEL CORNWELL on 10/21/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    
    // MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
