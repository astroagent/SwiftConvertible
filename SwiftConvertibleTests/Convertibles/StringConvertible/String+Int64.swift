//
//  String+Int64.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/14.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class StringFromInt64: XCTestCase {

    // MARK: - 正常系

    /// 正の数が変換可能
    func testPositiveNumberConvertible() {
        let int64: Int64 = 1
        XCTAssertEqual(int64.toString(), "1")
    }

    /// 負の数が変換可能
    func testNegativeNumberConvertible() {
        let int64: Int64 = -1
        XCTAssertEqual(int64.toString(), "-1")
    }

    /// `0`が変換可能
    func testZeroConvertible() {
        let int64: Int64 = 0
        XCTAssertEqual(int64.toString(), "0")
    }

}
