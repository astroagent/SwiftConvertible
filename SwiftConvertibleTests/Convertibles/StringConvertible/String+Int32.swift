//
//  String+Int32.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/14.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class StringFromInt32: XCTestCase {

    // MARK: - 正常系

    /// 正の数が変換可能
    func testPositiveNumberConvertible() {
        let int32: Int32 = 1
        XCTAssertEqual(int32.toString(), "1")
    }

    /// 負の数が変換可能
    func testNegativeNumberConvertible() {
        let int32: Int32 = -1
        XCTAssertEqual(int32.toString(), "-1")
    }

    /// `0`が変換可能
    func testZeroConvertible() {
        let int32: Int32 = 0
        XCTAssertEqual(int32.toString(), "0")
    }

}
