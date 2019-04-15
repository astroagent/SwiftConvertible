//
//  String+URL.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class StringFromURL: XCTestCase {

    // MARK: - 正常系

    func testURLConvertible() {
        let url: URL = URL(string: "https://hashimotoryoh@localhost:8080/index.html?foo=bar&hoge=fuga")!
        XCTAssertEqual(url.toString(), "https://hashimotoryoh@localhost:8080/index.html?foo=bar&hoge=fuga")
        XCTAssertNotNil(url.asString()) { string in
            XCTAssertEqual(string, "https://hashimotoryoh@localhost:8080/index.html?foo=bar&hoge=fuga")
        }
    }

}
