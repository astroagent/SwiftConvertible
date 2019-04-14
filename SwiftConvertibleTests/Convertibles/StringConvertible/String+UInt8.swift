//
//  String+UInt8.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/14.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class StringFromUInt8: XCTestCase {

    // MARK: - 正常系

    /// 正の数が変換可能
    func testPositiveNumberConvertible() {
        let int: UInt8 = 1
        XCTAssertEqual(int.toString(), "1")
    }

    /// `0`が変換可能
    func testZeroConvertible() {
        let int: UInt8 = 0
        XCTAssertEqual(int.toString(), "0")
    }

}
