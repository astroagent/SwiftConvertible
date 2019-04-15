//
//  Int+Bool.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class IntFromBool: XCTestCase {

    // MARK: - 正常系

    func testTrueConvertible() {
        let bool: Bool = true
        XCTAssertEqual(bool.toInt(), 1)
        XCTAssertEqual(bool.asInt(), Optional(1))
    }

    func testFalseConvertible() {
        let bool: Bool = false
        XCTAssertEqual(bool.toInt(), 0)
        XCTAssertEqual(bool.asInt(), Optional(0))
    }

}
