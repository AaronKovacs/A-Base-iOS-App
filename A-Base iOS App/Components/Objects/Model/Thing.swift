//
//  Thing.swift
//  A-Base
//
//  Created by Aaron Kovacs on 4/9/20.
//  Copyright © 2020 A-Base. All rights reserved.
//

import Foundation

public protocol Thing {
    
    var id: String { get }
    
    init(id: String)
    
}

