//
//  URL+String.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class URLFromString: XCTestCase {

    // MARK: - 正常系

    func testHTTPURLConvertible() {
        let string: String = "https://google.com"
        XCTAssertNoThrow(try string.toURL()) { url in
            XCTAssertEqual(url.absoluteString, string)
        }
        XCTAssertNotNil(string.asURL()) { url in
            XCTAssertEqual(url.absoluteString, string)
        }
    }

    func testFileURLConvertible() {
        let string: String = "file://Users/Shared/foo.txt"
        XCTAssertNoThrow(try string.toURL()) { url in
            XCTAssertEqual(url.absoluteString, string)
        }
        XCTAssertNotNil(string.asURL()) { url in
            XCTAssertEqual(url.absoluteString, string)
        }
    }


    // MARK: - 異常系

    func testSomeStringUnconvertible() {
        let string: String = "あいうえお"
        XCTAssertThrowsError(try string.toURL())
        XCTAssertNil(string.asURL())
    }

}
