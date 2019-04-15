//
//  URLConvertible.swift
//  SwiftConvertible
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import Foundation

public protocol URLConvertible {
    func toURL() throws -> URL
}

public extension URLConvertible {
    func asURL() -> URL? {
        return try? self.toURL()
    }
}

extension URL: URLConvertible {
    public func toURL() -> URL {
        return self
    }
}


// MARK: Converting

extension String: URLConvertible {
    public func toURL() throws -> URL {
        guard let url = URL(string: self) else {
            throw ConvertError(origin: self)
        }
        return url
    }
}
