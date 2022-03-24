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

    func testExample() throws {
        XCTAssertEqual(game.points(slideValue: 50), 999)
    }
}
