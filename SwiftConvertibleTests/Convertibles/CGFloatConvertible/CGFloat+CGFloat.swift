//
//  CGFloat+CGFloat.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/23.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class CGFloatFromCGFloat: XCTestCase {

    func testSelfConvertible() {
        let cgFloat: CGFloat = CGFloat.random(in: -99...99)
        print(cgFloat)
        XCTAssertEqual(cgFloat.toCGFloat(), cgFloat)
        XCTAssertNotNil(cgFloat.asCGFloat()) { asCGFloat in
            XCTAssertEqual(asCGFloat, cgFloat)
        }
    }

}
