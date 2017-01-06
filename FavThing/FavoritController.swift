//
//  FavoritController.swift
//  FavThing
//
//  Created by DANIEL CORNWELL on 12/9/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import Foundation


class FavoritController {
    
    static func create(favoritWithTitle title: String, like: String, favoritlist: Favoritlist) {
        let favorit = Favorit(title: title, like: like)
        FavoritlistController.sharedController.add(favorit: favorit, toFavoritlist: favoritlist)
    }
}
