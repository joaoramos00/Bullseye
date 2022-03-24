//
//  Game.swift
//  Bullseye
//
//  Created by João Luis Ferreira Ramos Junior on 24/03/22.
//

import Foundation

struct Game {
    
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    mutating func points(slideValue: Int) -> Int {
        100 - abs(slideValue-self.target)
    }
}
