//
//  XCTest+Ext.swift
//  SwiftConvertibleTests
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import XCTest

func XCTAssertNoThrow<T>(_ expression: @autoclosure () throws -> T,
                         _ message: String = "",
                         file: StaticString = #file,
                         line: UInt = #line,
                         also validateResult: (T) -> Void) {
    func executeAndAssignResult(_ expression: @autoclosure () throws -> T, to: inout T?) rethrows {
        to = try expression()
    }
    var result: T?
    XCTAssertNoThrow(try executeAndAssignResult(expression, to: &result), message, file: file, line: line)
    if let r = result {
        validateResult(r)
    }
}

func XCTAssertNotNil<T>(_ expression: @autoclosure () throws -> T?,
                        _ message: @autoclosure () -> String = "",
                        file: StaticString = #file,
                        line: UInt = #line,
                        also validateResult: (T) -> Void) {
    func executeAndAssignResult(_ expression: @autoclosure () throws -> T?, to: inout T?) rethrows {
        to = try expression()
    }
    var result: T?
    XCTAssertNotNil(try executeAndAssignResult(expression, to: &result), message, file: file, line: line)
    if let r = result {
        validateResult(r)
    }
}
