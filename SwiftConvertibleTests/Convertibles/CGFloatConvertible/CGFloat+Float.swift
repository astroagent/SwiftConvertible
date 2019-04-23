//
//  CGFloat+Float.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/23.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class CGFloatFromFloat: XCTestCase {

    // MARK: - 正常系

    func testPositiveNumberConvertible() {
        let float: Float = .random(in: Float.leastNonzeroMagnitude..<100)
        let expected: CGFloat = CGFloat(float)
        XCTAssertEqual(float.toCGFloat(), expected)
        XCTAssertNotNil(float.asCGFloat()) { cgFloat in
            XCTAssertEqual(cgFloat, expected)
        }
    }

    func testNegativeNumberConvertible() {
        let float: Float = .random(in: -100..<0)
        let expected: CGFloat = CGFloat(float)
        XCTAssertEqual(float.toCGFloat(), expected)
        XCTAssertNotNil(float.asCGFloat()) { cgFloat in
            XCTAssertEqual(cgFloat, expected)
        }
    }

    func testZeroConvertible() {
        let float: Float = 0
        let exptected: CGFloat = 0
        XCTAssertEqual(float.toCGFloat(), exptected)
        XCTAssertNotNil(float.asCGFloat()) { cgFloat in
            XCTAssertEqual(cgFloat, exptected)
        }
    }

}
