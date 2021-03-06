//
//  CCellObject.swift
//  A-Base
//
//  Created by Aaron Kovacs on 4/9/20.
//  Copyright © 2020 A-Base. All rights reserved.
//

import Foundation
import UIKit

class CCellObject: NSObject {
    
    //For UITableViewCells; Either a Float or UITableView.automaticDimension
    var height: CGFloat = UITableView.automaticDimension
    
    //Cell type to be instantiated
    var type: AnyClass
    
    init(type: AnyClass, height: CGFloat = UITableView.automaticDimension) {
        self.type = type
        self.height = height
        super.init()
    }
    
}
