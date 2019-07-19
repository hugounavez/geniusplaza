//
//  ViewControllerViews.swift
//  geniusplaza
//
//  Created by Hugo Reyes on 7/19/19.
//  Copyright © 2019 Hugo Reyes. All rights reserved.
//

import UIKit

class ViewControllerViews: UIView{
    
    
    let tableview: UITableView = {
        let table: UITableView = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    func setupView(){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.tableview)
        self.tableview.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        self.tableview.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.tableview.topAnchor.constraint(equalTo: self.topAnchor, constant: 44).isActive = true
        
    self.tableview.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
}
