//
//  FavoritListController.swift
//  FavThing
//
//  Created by DANIEL CORNWELL on 12/9/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import Foundation


class FavoritlistController {
    fileprivate static let FavoritlistsKey = "FavorlistsKey"
    
    static let sharedController = FavoritlistController()
    
    var favoritlists: [Favoritlist] = []

    init() {
        loadFromUserDefaults()
    }
    
  
    
    func delete(favoritlist: Favoritlist) {
        guard let index = favoritlists.index(of: favoritlist) else { return }
        favoritlists.remove(at: index)
        saveToUserDefaults()
    }
    
    func add(favorit: Favorit, toFavoritlist favoritlist: Favoritlist) {
        favoritlist.favorits.append(favorit)
        saveToUserDefaults()
    }
    
    func remove(favorit: Favorit, fromFavoritlist favortlist: Favoritlist) {
        guard let index = favortlist.favorits.index(of: favorit) else { return }
        favoritlists.remove(at: index)
        saveToUserDefaults()
    }
    
    // MARK: - Persistence
    
    func saveToUserDefaults() {
        let userDefaults = UserDefaults.standard
        let favoritlistDictionaries = favoritlists.map { $0.dictionaryRepresentation }
        userDefaults.setValue(favoritlistDictionaries, forKey: FavoritlistController.FavoritlistsKey)
    }
    
    // Making a function to load our data from UserDefaults
    func loadFromUserDefaults() {
        let userDefaults = UserDefaults.standard
        guard let favoritlistsDictionaries = userDefaults.object(forKey: FavoritlistController.FavoritlistsKey) as? [[String:Any]] else { return }
       
        favoritlists = favoritlistsDictionaries.flatMap{ Favoritlist(dictionary: $0) }
    }
}
