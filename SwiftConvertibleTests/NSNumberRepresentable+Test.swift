//
//  NSNumberRepresentable+Test.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/23.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest
@testable import SwiftConvertible

class NSNumberRepresentableTest: XCTestCase {

    func testIntRepresentable() {
        let int: Int = .random(in: Int.min...Int.max)
        // int.nsNumber を Int に戻したときにそれが同じであること
        XCTAssertEqual(Int(truncating: int.nsNumber), int)
    }

    // TODO: 他の表現もテスト

}
