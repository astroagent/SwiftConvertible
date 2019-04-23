//
//  NSNumberRepresentable.swift
//  SwiftConvertible
//
//  Created by 橋本 龍 on 2019/04/23.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import Foundation

public protocol NSNumberRepresentable {
    var nsNumber: NSNumber { get }
}

extension Int: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension Float: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
