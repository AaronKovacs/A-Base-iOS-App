//
//  HomeController.swift
//  A-Base
//
//  Created by Aaron Kovacs on 4/9/20.
//  Copyright © 2020 A-Base. All rights reserved.
//

import Foundation
import UIKit
import PMKFoundation
import PromiseKit

class HomeController: CTableViewController {
    
    init() {
        super.init(tableView: BTableView.init(style: .plain))
        
        tableView.setDelegate(self)
        
        fetch()
    }
    
    func fetch() {
        guard let request: URLRequest = Session.makeUrlRequest(endpoint: Endpoints.links(), method: .GET) else { return }
        
        firstly {
            URLSession.shared.dataTask(.promise, with: request).validate()
        }.map {
            try JSON.init(data: $0.data)
        }.done { json in
            
            var posts: [CCellObject] = [CCellObject]()

            if let data: [JSON] = json["links"].array {
                for js in data {
                    posts.append(HomeLinkObject.init(link: Link.init(json: js)))
                }
            }
            
            self.tableView.data = [posts]
            self.tableView.reloadData()
            
        }.catch { error in
            print(error)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeController: CTableViewDelegate {
    
    func cellTypes() -> [AnyClass] {
        return [HomeLinkCell.self]
    }
    
    func cell(indexPath: IndexPath) -> UITableViewCell? {
        return nil
    }
    
}
