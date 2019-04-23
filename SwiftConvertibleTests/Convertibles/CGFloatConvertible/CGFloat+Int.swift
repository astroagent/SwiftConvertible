//
//  CGFloat+Int.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/23.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class CGFloatFromInt: XCTestCase {

    func testPositiveNumberConvertible() {
        let int: Int = .random(in: 1...Int.max)
        let expected: CGFloat = CGFloat(int)
        XCTAssertEqual(int.toCGFloat(), expected)
        XCTAssertNotNil(int.asCGFloat()) { cgFloat in
            XCTAssertEqual(cgFloat, expected)
        }
    }

    func testNegativeNumberConvertible() {
        let int: Int = .random(in: Int.min..<0)
        let expected: CGFloat = CGFloat(int)
        XCTAssertEqual(int.toCGFloat(), expected)
        XCTAssertNotNil(int.asCGFloat()) { cgFloat in
            XCTAssertEqual(cgFloat, expected)
        }
    }

    func testZeroConvertible() {
        let int: Int = 0
        let expected: CGFloat = 0
        XCTAssertEqual(int.toCGFloat(), expected)
        XCTAssertNotNil(int.asCGFloat()) { cgFloat in
            XCTAssertEqual(cgFloat, expected)
        }
    }

}
