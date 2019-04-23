//
//  Float+Int.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/23.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class FloatFromInt: XCTestCase {

    // MARK: - 正常系

    func testPositiveIntConvertible() {
        let int: Int = .random(in: 1..<100)
        XCTAssertEqual(int.toFloat(), Float(int))
        XCTAssertNotNil(int.asFloat()) { float in
            XCTAssertEqual(float, Float(int))
        }
    }

    func testNegativeNumberConvertible() {
        let int: Int = .random(in: -100..<0)
        XCTAssertEqual(int.toFloat(), Float(int))
        XCTAssertNotNil(int.asFloat()) { float in
            XCTAssertEqual(float, Float(int))
        }
    }

    func testZeroConvertible() {
        let int: Int = 0
        XCTAssertEqual(int.toFloat(), Float(int))
        XCTAssertNotNil(int.asFloat()) { float in
            XCTAssertEqual(float, Float(int))
        }
    }

}
