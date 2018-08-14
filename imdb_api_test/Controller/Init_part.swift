//
//  Init_part.swift
//  imdb_api_test
//
//  Created by Sarvad shetty on 8/14/18.
//  Copyright © 2018 Sarvad shetty. All rights reserved.
//

import Foundation

internal func Init<Type>(_ value: Type, block: (_ object: Type) -> Void) -> Type {
    block(value)
    return value
}

