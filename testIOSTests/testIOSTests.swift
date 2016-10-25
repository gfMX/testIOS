//
//  testIOSTests.swift
//  testIOSTests
//
//  Created by Abraham Tavera V. on 24/10/16.
//  Copyright © 2016 MezcalDev. All rights reserved.
//

import XCTest
@testable import testIOS

class testIOSTests: XCTestCase {
    // MARK: FoodTracker Tests
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        //
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid!")
    }
}
