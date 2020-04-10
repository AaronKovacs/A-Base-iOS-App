//
//  HomeLinkObject.swift
//  A-Base
//
//  Created by Aaron Kovacs on 4/9/20.
//  Copyright © 2020 A-Base. All rights reserved.
//

import Foundation

class HomeLinkObject: CCellObject {
    
    let link: Link
    
    init(link: Link) {
        self.link = link
        super.init(type: HomeLinkCell.self)
    }
    
}
