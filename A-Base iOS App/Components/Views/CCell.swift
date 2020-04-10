//
//  CCell.swift
//  A-Base
//
//  Created by Aaron Kovacs on 4/9/20.
//  Copyright © 2020 A-Base. All rights reserved.
//

import Foundation
import UIKit

@objc public class CCell: UITableViewCell {
    
    var height: CGFloat = UITableView.automaticDimension
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.commonInit()
    }
    
    func commonInit() {}
        
    func update(object: CCellObject) {
        self.height = object.height
    }

}
