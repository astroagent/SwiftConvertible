//
//  ConvertError.swift
//  SwiftConvertible
//
//  Created by 橋本 龍 on 2019/04/15.
//  Copyright © 2019 Ryoh Hashimoto. All rights reserved.
//

import Foundation

public struct ConvertError {

    // MARK: Properties

    let origin: Any


    // MARK: Initializers

    init(origin: Any) {
        self.origin = origin
    }

}


// MARK: - CustomNSError
extension ConvertError: CustomNSError {

    public var errorUserInfo: [String: Any] {
        var info: [String: Any] = [:]
        info[NSLocalizedDescriptionKey] = "変換に失敗しました"
        info[ConvertErrorOriginKey] = origin
        return info
    }

}


public var ConvertErrorOriginKey: String {
    return "ConvertErrorOriginKey"
}
