//
//  IntConvertible.swift
//  SwiftConvertible
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import Foundation

public protocol IntConvertible {
    func toInt() throws -> Int
}

public extension IntConvertible {
    func asInt() -> Int? {
        return try? self.toInt()
    }
}

extension Int: IntConvertible {
    public func toInt() -> Int {
        return self
    }
}


// MARK: - Converting

extension String: IntConvertible {
    public func toInt() throws -> Int {
        guard let int = Int(self) else {
            throw ConvertError(origin: self)
        }
        return int
    }
}
