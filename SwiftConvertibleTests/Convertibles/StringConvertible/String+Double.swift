//
//  String+Double.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/14.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class StringFromDouble: XCTestCase {

    // MARK: - 正常系

    /// 正の整数が変換可能
    func testPositiveIntegerConvertible() {
        let double: Double = 1
        XCTAssertEqual(double.toString(), "1.0")
    }

    /// 正の小数が変換可能
    func testPositiveDecimalNumberConvertible() {
        let double: Double = 1.234
        XCTAssertEqual(double.toString(), "1.234")
    }

    /// 負の整数が変換可能
    func testNegativeIntegerConvertible() {
        let double: Double = -1
        XCTAssertEqual(double.toString(), "-1.0")
    }

    /// 負の小数が変換可能
    func testNegativeDecimalNumberConvertible() {
        let double: Double = -1.234
        XCTAssertEqual(double.toString(), "-1.234")
    }

    /// `0`が変換可能
    func testZeroConvertible() {
        let double: Double = 0
        XCTAssertEqual(double.toString(), "0.0")
    }

}
