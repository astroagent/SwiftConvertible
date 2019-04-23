//
//  Float+Float.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/23.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class FloatFromFloat: XCTestCase {

    func testSelfConvertible() {
        let float: Float = .random(in: -99...99)
        XCTAssertEqual(float.toFloat(), float)
        XCTAssertNotNil(float.asFloat()) { asFloat in
            XCTAssertEqual(asFloat, float)
        }
    }

}
