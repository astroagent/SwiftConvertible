//
//  Date+String.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class DateFromString: XCTestCase {

    // MARK: - 正常系

    func testStringConvertibleWithDefaultFormat() {
        let string: String = "1994-12-10T01:23:45+09:00"
        XCTAssertNoThrow(try string.toDate()) { date in
            let calendar = Calendar.current
            XCTAssertEqual(calendar.component(.year, from: date), 1994)
            XCTAssertEqual(calendar.component(.month, from: date), 12)
            XCTAssertEqual(calendar.component(.day, from: date), 10)
            XCTAssertEqual(calendar.component(.hour, from: date), 1)
            XCTAssertEqual(calendar.component(.minute, from: date), 23)
            XCTAssertEqual(calendar.component(.second, from: date), 45)
        }
        XCTAssertNotNil(string.asDate()) { date in
            let calendar = Calendar.current
            XCTAssertEqual(calendar.component(.year, from: date), 1994)
            XCTAssertEqual(calendar.component(.month, from: date), 12)
            XCTAssertEqual(calendar.component(.day, from: date), 10)
            XCTAssertEqual(calendar.component(.hour, from: date), 1)
            XCTAssertEqual(calendar.component(.minute, from: date), 23)
            XCTAssertEqual(calendar.component(.second, from: date), 45)
        }
    }

    func testStringConvertibleWithSpecifiedFormat() {
        let string: String = "1994/12/10 21:09:00"
        let format: String = "yyyy/MM/dd HH:mm:ss"
        XCTAssertNoThrow(try string.toDate(format: format)) { date in
            let calendar = Calendar.current
            XCTAssertEqual(calendar.component(.year, from: date), 1994)
            XCTAssertEqual(calendar.component(.month, from: date), 12)
            XCTAssertEqual(calendar.component(.day, from: date), 10)
            XCTAssertEqual(calendar.component(.hour, from: date), 21)
            XCTAssertEqual(calendar.component(.minute, from: date), 9)
            XCTAssertEqual(calendar.component(.second, from: date), 0)
        }
        XCTAssertNotNil(string.asDate(format: format)) { date in
            let calendar = Calendar.current
            XCTAssertEqual(calendar.component(.year, from: date), 1994)
            XCTAssertEqual(calendar.component(.month, from: date), 12)
            XCTAssertEqual(calendar.component(.day, from: date), 10)
            XCTAssertEqual(calendar.component(.hour, from: date), 21)
            XCTAssertEqual(calendar.component(.minute, from: date), 9)
            XCTAssertEqual(calendar.component(.second, from: date), 0)
        }
    }


    // MARK: - 異常系

    func testStringUnconvertibleWithMissDefaultFormat() {
        let string: String = "1994-12-10 01:23:45"
        XCTAssertThrowsError(try string.toDate())
        XCTAssertNil(string.asDate())
    }

    func testStringUnconvertibleWithMissFormat() {
        let string: String = "1994/12/10 01:23:45"
        let format: String = "yyyy/MM/dd HH:mm"
        XCTAssertThrowsError(try string.toDate(format: format))
        XCTAssertNil(string.asDate(format: format))
    }

}
