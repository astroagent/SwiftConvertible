//
//  DateConvertible.swift
//  SwiftConvertible
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import Foundation

public protocol DateConvertible {
    func toDate() throws -> Date
}

public extension DateConvertible {
    func asDate() -> Date? {
        return try? self.toDate()
    }
}

extension Date: DateConvertible {
    public func toDate() -> Date {
        return self
    }
}


// MARK: - Converting

extension String: DateConvertible {
    public func toDate() throws -> Date {
        guard let date = ISO8601DateFormatter().date(from: self) else {
            throw ConvertError(origin: self)
        }
        return date
    }
    public func toDate(format: String) throws -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        guard let date = formatter.date(from: self) else {
            throw ConvertError(origin: self)
        }
        return date
    }
    public func asDate(format: String) -> Date? {
        return try? self.toDate(format: format)
    }
}
