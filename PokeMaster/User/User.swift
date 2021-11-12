//
//  User.swift
//  PokeMaster
//
//  Created by 季勤强 on 2021/11/12.
//  Copyright © 2021 OneV's Den. All rights reserved.
//

import Foundation

struct User: Codable {
    
    var email: String
    var favoritePokemonIDs: Set<Int>
    
    func isFavoritePokemon(id: Int) -> Bool {
        favoritePokemonIDs.contains(id)
    }
    
}
