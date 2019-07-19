//
//  ViewController.swift
//  geniusplaza
//
//  Created by Hugo Reyes on 7/19/19.
//  Copyright © 2019 Hugo Reyes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let mainView = ViewControllerViews()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.setupViews()
    }
    
    func setupViews(){
        self.view.addSubview(self.mainView)
        self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor,  multiplier: 1).isActive = true
        self.mainView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.mainView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        self.mainView.setupView()
        
    }


}

