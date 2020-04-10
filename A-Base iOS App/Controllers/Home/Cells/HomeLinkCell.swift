//
//  HomeLinkCell.swift
//  A-Base
//
//  Created by Aaron Kovacs on 4/9/20.
//  Copyright © 2020 A-Base. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class HomeLinkCell: CCell {
    
    let titleLbl: UILabel = {
        let lbl: UILabel = UILabel.init()
        lbl.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let descriptionLbl: UILabel = {
        let lbl: UILabel = UILabel.init()
        lbl.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var stackView: UIStackView!
    
    override func commonInit() {
        super.commonInit()
        
        stackView = UIStackView.init(arrangedSubviews: [titleLbl, descriptionLbl])
        stackView.axis = .vertical
        stackView.alignment = .fill
        addSubview(stackView)
        
        updateConstraints()
    }
    
    override func update(object: CCellObject) {
        super.update(object: object)
        
        if let link: HomeLinkObject = object as? HomeLinkObject {
            titleLbl.text = link.link.title
            descriptionLbl.text = link.link.description
        }
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        stackView.snp.makeConstraints { (maker) in
            maker.left.equalTo(self).inset(16)
            maker.top.equalTo(self).inset(16)
            maker.right.equalTo(self).inset(16)
            maker.bottom.equalTo(self).inset(16)
        }
    }
    
}
