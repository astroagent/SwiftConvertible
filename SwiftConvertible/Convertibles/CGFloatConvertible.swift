//
//  CGFloatConvertible.swift
//  SwiftConvertible
//
//  Created by 橋本 龍 on 2019/04/23.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import Foundation

public protocol CGFloatConvertible {
    func toCGFloat() throws -> CGFloat
}

public extension CGFloatConvertible {
    func asCGFloat() -> CGFloat? {
        return try? self.toCGFloat()
    }
}

extension CGFloat: CGFloatConvertible {
    public func toCGFloat() -> CGFloat {
        return self
    }
}

// MARK: Converting

extension NSNumberRepresentable where Self: CGFloatConvertible {
    public func toCGFloat() -> CGFloat {
        return CGFloat(truncating: self.nsNumber)
    }
}
extension Int: CGFloatConvertible {}
extension Float: CGFloatConvertible {}
