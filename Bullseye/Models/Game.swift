//
//  Game.swift
//  Bullseye
//
//  Created by João Luis Ferreira Ramos Junior on 24/03/22.
//

import Foundation

struct Game {
    
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(slideValue: Int) -> Int {
        return 999
    }
    
    func diff(hitted: Int, target:Int) -> Int {
        return abs(hitted-target)
    }
}
