//
//  CGFloatConvertible.swift
//  SwiftConvertible
//
//  Created by 橋本 龍 on 2019/04/23.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import Foundation

protocol CGFloatConvertible {
    func toCGFloat() throws -> CGFloat
}

extension CGFloatConvertible {
    func asCGFloat() -> CGFloat? {
        return try? self.toCGFloat()
    }
}

extension CGFloat: CGFloatConvertible {
    func toCGFloat() -> CGFloat {
        return self
    }
}

// MARK: Converting
