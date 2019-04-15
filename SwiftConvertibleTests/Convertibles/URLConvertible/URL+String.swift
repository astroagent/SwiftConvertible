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
        let string: String = "https://hashimotoryoh@localhost:8080/index.html?foo=bar&hoge=fuga"
        XCTAssertNoThrow(try string.toURL()) { url in
            XCTAssertEqual(url, URL(string: "https://hashimotoryoh@localhost:8080/index.html?foo=bar&hoge=fuga"))
            XCTAssertEqual(url.scheme, "https")
            XCTAssertEqual(url.host, "localhost")
            XCTAssertEqual(url.user, "hashimotoryoh")
            XCTAssertEqual(url.port, 8080)
            XCTAssertEqual(url.lastPathComponent, "index.html")
            XCTAssertEqual(url.query, "foo=bar&hoge=fuga")
        }
        XCTAssertNotNil(string.asURL()) { url in
            XCTAssertEqual(url.absoluteString, string)
            XCTAssertEqual(url.scheme, "https")
            XCTAssertEqual(url.host, "localhost")
            XCTAssertEqual(url.user, "hashimotoryoh")
            XCTAssertEqual(url.port, 8080)
            XCTAssertEqual(url.lastPathComponent, "index.html")
            XCTAssertEqual(url.query, "foo=bar&hoge=fuga")
        }
    }


    // MARK: - 異常系

    func testSomeStringUnconvertible() {
        let string: String = "あいうえお"
        XCTAssertThrowsError(try string.toURL())
        XCTAssertNil(string.asURL())
    }

}
