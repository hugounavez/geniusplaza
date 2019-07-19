//
//  DataCell.swift
//  geniusplaza
//
//  Created by Hugo Reyes on 7/19/19.
//  Copyright © 2019 Hugo Reyes. All rights reserved.
//

import UIKit
import Kingfisher

class DataCell: UITableViewCell{
    
    let mainLabel : UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
   
    let mainImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let releaseDate: UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let albumLabel : UILabel = {
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
        self.addSubview(self.mainImage)
        self.mainImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.mainImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.mainImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.mainImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
      self.addSubview(self.mainLabel)
        self.mainLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        self.mainLabel.leftAnchor.constraint(equalTo: self.mainImage.rightAnchor, constant: 5).isActive = true
        self.mainLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        self.mainLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        self.addSubview(self.releaseDate)
        self.releaseDate.topAnchor.constraint(equalTo: self.mainLabel.bottomAnchor, constant: 5).isActive = true
        self.releaseDate.centerXAnchor.constraint(equalTo: self.mainLabel.centerXAnchor).isActive = true
        self.releaseDate.widthAnchor.constraint(equalTo: self.mainLabel.widthAnchor).isActive = true
        self.releaseDate.heightAnchor.constraint(equalTo: self.releaseDate.heightAnchor, multiplier: 1).isActive = true
        
        
        self.addSubview(self.albumLabel)
        self.albumLabel.topAnchor.constraint(equalTo: self.releaseDate.bottomAnchor, constant: 5).isActive = true
        self.albumLabel.centerXAnchor.constraint(equalTo: self.releaseDate.centerXAnchor).isActive = true
        self.albumLabel.widthAnchor.constraint(equalTo: self.releaseDate.widthAnchor).isActive = true
        self.albumLabel.heightAnchor.constraint(equalTo: self.releaseDate.heightAnchor, multiplier: 1).isActive = true
        
        
        self.mainImage.layer.cornerRadius = 10
        self.mainImage.clipsToBounds = true
    }
    
}

