//
//  BoolConvertible.swift
//  SwiftConvertible
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import Foundation

public protocol BoolConvertible {
    func toBool() throws -> Bool
}

public extension BoolConvertible {
    func asBool() -> Bool? {
        return try? self.toBool()
    }
}

extension Bool: BoolConvertible {
    public func toBool() -> Bool {
        return self
    }
}


// MARK: - Converting

extension Int: BoolConvertible {
    public func toBool() throws -> Bool {
        guard let bool = Bool(exactly: self as NSNumber) else {
            throw ConvertError(origin: self)
        }
        return bool
//        Bool.init(truncating: self as NSNumber)
    }
}
