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
extension Int8: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension Int16: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension Int32: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension Int64: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension UInt: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension UInt8: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension UInt16: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension UInt32: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension UInt64: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension Float: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension Double: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
extension CGFloat: NSNumberRepresentable {
    public var nsNumber: NSNumber { return self as NSNumber }
}
