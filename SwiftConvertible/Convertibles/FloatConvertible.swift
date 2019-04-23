//
//  FloatConvertible.swift
//  SwiftConvertible
//
//  Created by 橋本 龍 on 2019/04/23.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import Foundation

public protocol FloatConvertible {
    func toFloat() throws -> Float
}

public extension FloatConvertible {
    func asFloat() -> Float? {
        return try? self.toFloat()
    }
}

extension Float: FloatConvertible {
    public func toFloat() -> Float {
        return self
    }
}


// MARK: - Converting

extension NSNumberRepresentable where Self: FloatConvertible {
    public func toFloat() -> Float {
        return Float(truncating: self.nsNumber)
    }
}
extension Int: FloatConvertible {}

extension StringProtocol where Self: FloatConvertible {
    public func toFloat() throws -> Float {
        guard let float = Float.init(self) else {
            throw ConvertError(origin: self)
        }
        return float
    }
}
extension String: FloatConvertible {}
