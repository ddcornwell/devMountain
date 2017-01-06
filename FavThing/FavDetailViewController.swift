//
//  FavDetailViewController.swift
//  FavThing
//
//  Created by DANIEL CORNWELL on 12/9/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import UIKit

class FavDetailViewController: UIViewController {

    @IBOutlet weak var favoritTitleView: UITextField!
    @IBOutlet weak var LikeView: UITextField!
    
    
    var favoritlist: Favoritlist?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

//MARK: - Action
    
    @IBAction func saveButton(_ sender: Any) {
        guard let favoritlist = favoritlist,
            let favoritTitle = favoritTitleView.text,
            let like = LikeView.text,
            !favoritTitle.isEmpty && !like.isEmpty else { return }
        FavoritController.create(favoritWithTitle: favoritTitle, like: like, favoritlist: favoritlist)
        favoritTitleView.text = ""
        LikeView.text = ""
    }
}

