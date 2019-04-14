//
//  String+Uint64.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/14.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class StringFromUInt64: XCTestCase {

    // MARK: - 正常系

    /// 正の数が変換可能
    func testPositiveNumberConvertible() {
        let uint64: UInt64 = 1
        XCTAssertEqual(uint64.toString(), "1")
    }

    /// `0`が変換可能
    func testZeroConvertible() {
        let uint64: UInt64 = 0
        XCTAssertEqual(uint64.toString(), "0")
    }

}
