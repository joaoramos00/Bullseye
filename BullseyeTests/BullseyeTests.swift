//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by João Luis Ferreira Ramos Junior on 24/03/22.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {

    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(slideValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(slideValue: guess)
        XCTAssertEqual(score, 95)
    }
}
