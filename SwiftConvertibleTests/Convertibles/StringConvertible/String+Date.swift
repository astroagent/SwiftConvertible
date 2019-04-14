//
//  String+Date.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/14.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class StringFromDate: XCTestCase {

    // MARK: - 正常系

    func testDateConvertibleWithDefaultFormat() {
        let date = Date(timeIntervalSince1970: 0)
        XCTAssertEqual(date.toString(), "1970-01-01T00:00:00Z")
    }

    func testDateConvertibleWithSepcifiedFormat() {
        var date = Date(timeIntervalSince1970: 0)
        let format = "yyyy/MM/dd HH:mm:ss"
        date.addTimeInterval(-TimeInterval(TimeZone.autoupdatingCurrent.secondsFromGMT()))
        XCTAssertEqual(date.toString(format: format), "1970/01/01 00:00:00")
    }

}
