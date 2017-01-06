//
//  Favthing.swift
//  FavThing
//
//  Created by DANIEL CORNWELL on 12/9/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import Foundation


class Favorit: Equatable {
    
    fileprivate static let titleKey = "titleKey"
    fileprivate static let likeKey = "likeKey"
    
    let title: String
    let like: String
    
    init(title: String, like: String) {
        self.title = title
        self.like = like
    }
    
    // MARK: - Dictionary

    var dictionaryRepresentation: [String:Any] {
        return [Favorit.titleKey: title, Favorit.likeKey: like]
    }
    
    convenience init?(dictionary: [String:Any]) {
        guard let title = dictionary[Favorit.titleKey] as? String,
        let like = dictionary[Favorit.likeKey] as? String
        else { return nil }
        self.init(title: title, like : like)
    }
}

func ==(lhs: Favorit, rhs: Favorit) -> Bool {
    return lhs.title == rhs.title && lhs.like == rhs.like
}
