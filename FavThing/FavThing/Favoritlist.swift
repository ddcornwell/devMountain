//
//  ok.swift
//  FavThing
//
//  Created by DANIEL CORNWELL on 12/9/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import Foundation

class Favoritlist: Equatable {
    fileprivate static let favKey = "favKey"
    fileprivate static let favoritsKey = "favoritsKey"
    
    let fav: String
    var favorits: [Favorit]
    
    init(fav: String, favorits: [Favorit] = []) {
        self.fav = fav
        self.favorits = favorits
    }
    
    // MARK: - Dictionary conversion

    var dictionaryRepresentation: [String:Any] {
   
        let favoritDictionaries = favorits.map { $0.dictionaryRepresentation }
        return [Favoritlist.favKey:fav, Favoritlist.favoritsKey:favoritDictionaries]
    }
    
    // making a convenienc init so that we can initialize a Playlist object from a dictionary that we pass in (these dictionaries are coming from UserDefaults)
    convenience init?(dictionary: [String:Any]) {
        guard let fav = dictionary[Favoritlist.favKey] as? String,
            let favoritDictionaries = dictionary[Favoritlist.favoritsKey] as? [[String:Any]] else { return nil }
        
        // We're going through our songDictionaries array and taking each dictionary out and putting it into our Song init so that we can turn each dictionary back into a Song object
        let favorits = favoritDictionaries.flatMap { Favorit(dictionary: $0) }
        
        self.init(fav: fav, favorits: favorits)
    }
}

func ==(lhs: Favoritlist, rhs: Favoritlist) -> Bool {
    return lhs.fav == rhs.fav && lhs.favorits == rhs.favorits
}
