//
//  Float+String.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/23.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class FloatFromString: XCTestCase {

    // MARK: - 正常系

    func testPositiveIntegerConvertible() {
        let string: String = "123"
        XCTAssertNoThrow(try string.toFloat()) { float in
            XCTAssertEqual(float, Float(123))
        }
        XCTAssertNotNil(string.asFloat()) { float in
            XCTAssertEqual(float, Float(123))
        }
    }

    func testPositiveDecimalConvertible() {
        let string: String = "123.456"
        XCTAssertNoThrow(try string.toFloat()) { float in
            XCTAssertEqual(float, 123.456)
        }
        XCTAssertNotNil(string.asFloat()) { float in
            XCTAssertEqual(float, 123.456)
        }
    }

    func testNegativeIntegerConvertible() {
        let string: String = "-123"
        XCTAssertNoThrow(try string.toFloat()) { float in
            XCTAssertEqual(float, Float(-123))
        }
        XCTAssertNotNil(string.asFloat()) { float in
            XCTAssertEqual(float, Float(-123))
        }
    }

    func testNegativeDecimalConvertible() {
        let string: String = "-123.456"
        XCTAssertNoThrow(try string.toFloat()) { float in
            XCTAssertEqual(float, Float(-123.456))
        }
        XCTAssertNotNil(string.asFloat()) { float in
            XCTAssertEqual(float, Float(-123.456))
        }
    }

    func testIntegerZeroConvertible() {
        let string: String = "0"
        XCTAssertNoThrow(try string.toFloat()) { float in
            XCTAssertEqual(float, Float(0))
        }
        XCTAssertNotNil(string.asFloat()) { float in
            XCTAssertEqual(float, Float(0))
        }
    }

    func testDecimalZeroConvertible() {
        let string: String = "0.0"
        XCTAssertNoThrow(try string.toFloat()) { float in
            XCTAssertEqual(float, Float(0))
        }
        XCTAssertNotNil(string.asFloat()) { float in
            XCTAssertEqual(float, Float(0))
        }
    }


    // MARK: - 異常系

    func testAlphabetUnconvertible() {
        let string: String = "a"
        XCTAssertThrowsError(try string.toFloat())
        XCTAssertNil(string.asFloat())
    }

    func testJapaneseUnconvertible() {
        let hiragana: String = "あ"
        XCTAssertThrowsError(try hiragana.toFloat())
        XCTAssertNil(hiragana.asFloat())
        let katakana: String = "ア"
        XCTAssertThrowsError(try katakana.toFloat())
        XCTAssertNil(katakana.asFloat())
        let kanji: String = "安"
        XCTAssertThrowsError(try kanji.toFloat())
        XCTAssertNil(kanji.asFloat())
    }

}
