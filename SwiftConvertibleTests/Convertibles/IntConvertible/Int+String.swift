//
//  Int+String.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class IntFromString: XCTestCase {

    // MARK: - 正常系

    func testPositiviIntegerConvertible() {
        let string: String = "1"
        XCTAssertNoThrow(try string.toInt()) { int in
            XCTAssertEqual(int, 1)
        }
        XCTAssertEqual(string.asInt(), Optional(1))
    }

    func testNegativeIntegerConvertible() {
        let string: String = "-1"
        XCTAssertNoThrow(try string.toInt()) { int in
            XCTAssertEqual(int, -1)
        }
        XCTAssertEqual(string.asInt(), Optional(-1))
    }

    func testZeroConvertible() {
        let string: String = "0"
        XCTAssertNoThrow(try string.toInt()) { int in
            XCTAssertEqual(int, 0)
        }
        XCTAssertEqual(string.asInt(), Optional(0))
    }

    func testZeroFillNumberConvertible() {
        let string: String = "0010"
        XCTAssertNoThrow(try string.toInt()) { int in
            XCTAssertEqual(int, 10)
        }
        XCTAssertEqual(string.asInt(), Optional(10))
    }


    // MARK: - 異常系

    func testAlphabetUnconvertible() {
        let string: String = "a"
        XCTAssertThrowsError(try string.toInt())
        XCTAssertNil(string.asInt())
    }

    func testJapaneseUnconvertible() {
        let hiragana: String = "あ"
        XCTAssertThrowsError(try hiragana.toInt())
        XCTAssertNil(hiragana.asInt())

        let katakana: String = "ア"
        XCTAssertThrowsError(try katakana.toInt())
        XCTAssertNil(katakana.asInt())

        let kanji: String = "安"
        XCTAssertThrowsError(try kanji.toInt())
        XCTAssertNil(kanji.asInt())
    }

}
