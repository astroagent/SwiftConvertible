//
//  StringConvertible.swift
//  SwiftConvertible
//
//  Created by 橋本 龍 on 2019/04/14.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import Foundation

public protocol StringConvertible {
    func toString() throws -> String
}

public extension StringConvertible {
    func asString() -> String? {
        return try? self.toString()
    }
}

extension String: StringConvertible {
    public func toString() -> String {
        return self
    }
}


// MARK: Converting

extension LosslessStringConvertible where Self: StringConvertible {
    public func toString() -> String {
        return String(self)
    }
}
extension Int: StringConvertible {}
extension Int8: StringConvertible {}
extension Int16: StringConvertible {}
extension Int32: StringConvertible {}
extension Int64: StringConvertible {}
extension UInt: StringConvertible {}
extension UInt8: StringConvertible {}
extension UInt16: StringConvertible {}
extension UInt32: StringConvertible {}
extension UInt64: StringConvertible {}
extension Float: StringConvertible {}
extension Double: StringConvertible {}

extension CGFloat: StringConvertible {
    public func toString() -> String {
        return String(Float(self))
    }
}

extension Date: StringConvertible {
    public func toString() -> String {
        return ISO8601DateFormatter().string(from: self)
    }
    public func toString(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
