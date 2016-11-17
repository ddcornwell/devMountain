//
//  MealTableViewCell.swift
//  FoodTracker 002
//
//  Created by DANIEL CORNWELL on 11/16/16.
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

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
