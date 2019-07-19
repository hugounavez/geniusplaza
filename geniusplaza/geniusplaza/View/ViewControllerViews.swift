//
//  ViewControllerViews.swift
//  geniusplaza
//
//  Created by Hugo Reyes on 7/19/19.
//  Copyright © 2019 Hugo Reyes. All rights reserved.
//

import UIKit

class ViewControllerViews: UIView{
    
    let title: UILabel = {
    let label: UILabel = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textAlignment = .center
    label.text = "Genius Plaza"
    return label
    }()
    
    let lineView : UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .gray
        return line
    }()
    
    let tableview: UITableView = {
        let table: UITableView = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    func setupView(){
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.title)
        self.title.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        self.title.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.9).isActive = true
        self.title.heightAnchor.constraint(equalToConstant: 60).isActive = true
        self.title.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        
        self.addSubview(self.lineView)
        self.lineView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        self.lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        self.lineView.centerXAnchor.constraint(equalTo: self.title.centerXAnchor, constant: 0).isActive = true
        self.lineView.topAnchor.constraint(equalTo: self.title.bottomAnchor).isActive = true
        
        
        
        self.addSubview(self.tableview)
        self.tableview.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        self.tableview.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.tableview.topAnchor.constraint(equalTo: self.lineView.bottomAnchor, constant: 0).isActive = true
        
    self.tableview.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        
    self.title.backgroundColor = .clear
    self.tableview.allowsSelection = false
    
        
    }
    

}
