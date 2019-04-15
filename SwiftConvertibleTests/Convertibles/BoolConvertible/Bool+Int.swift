//
//  Bool+Int.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class BoolFromInt: XCTestCase {

    // MARK: - 正常系

    func testZeroConvertible() {
        let int: Int = 0
        XCTAssertNoThrow(try int.toBool()) { bool in
            XCTAssertFalse(bool)
        }
        XCTAssertNotNil(int.asBool()) { bool in
            XCTAssertFalse(bool)
        }
    }

    func testOneConvertible() {
        let int: Int = 1
        XCTAssertNoThrow(try int.toBool()) { bool in
            XCTAssertTrue(bool)
        }
        XCTAssertNotNil(int.asBool()) { bool in
            XCTAssertTrue(bool)
        }
    }


    // MARK: - 異常系

    func testPositiveMultiNumberUnconvertible() {
        let int: Int = 10
        XCTAssertThrowsError(try int.toBool())
        XCTAssertNil(int.asBool())
    }

    func testNegativeNumberUnconvertible() {
        let int: Int = -1
        XCTAssertThrowsError(try int.toBool())
        XCTAssertNil(int.asBool())
    }

}
