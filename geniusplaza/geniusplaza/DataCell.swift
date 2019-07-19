//
//  DataCell.swift
//  geniusplaza
//
//  Created by Hugo Reyes on 7/19/19.
//  Copyright © 2019 Hugo Reyes. All rights reserved.
//

import UIKit

class DataCell: UITableViewCell{
    
    let mainLabel : UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
   
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupLayout()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout(){

        self.addSubview(self.mainLabel)
        self.mainLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.mainLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.mainLabel.widthAnchor.constraint(equalToConstant: 140).isActive = true
        self.mainLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        self.mainLabel.backgroundColor  = .green
    }
    
}

