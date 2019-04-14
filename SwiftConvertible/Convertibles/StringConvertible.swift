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
extension UInt8: StringConvertible {}
