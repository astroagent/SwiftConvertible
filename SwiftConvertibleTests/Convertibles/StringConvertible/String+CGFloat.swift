//
//  String+CGFloat.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/14.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class StringFromCGFloat: XCTestCase {

    // MARK: - 正常系

    /// 正の整数が変換可能
    func testPositiveIntegerConvertible() {
        let cgfloat: CGFloat = 1
        XCTAssertEqual(cgfloat.toString(), "1.0")
    }

    /// 正の小数が変換可能
    func testPositiveDecimalNumberConvertible() {
        let cgfloat: CGFloat = 1.234
        XCTAssertEqual(cgfloat.toString(), "1.234")
    }

    /// 負の整数が変換可能
    func testNegativeIntegerConvertible() {
        let cgfloat: CGFloat = -1
        XCTAssertEqual(cgfloat.toString(), "-1.0")
    }

    /// 負の小数が変換可能
    func testNegativeDecimalNumberConvertible() {
        let cgfloat: CGFloat = -1.234
        XCTAssertEqual(cgfloat.toString(), "-1.234")
    }

    /// `0`が変換可能
    func testZeroConvertible() {
        let cgfloat: CGFloat = 0
        XCTAssertEqual(cgfloat.toString(), "0.0")
    }

}
