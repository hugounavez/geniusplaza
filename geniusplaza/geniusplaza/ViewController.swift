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
    let viewModel = ViewControllerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.setupViews()
        
        
    }
    
    func setupViews(){
        self.view.layoutIfNeeded()
        
        self.view.addSubview(self.mainView)
        self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor,  multiplier: 1).isActive = true
        self.mainView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.mainView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        self.view.backgroundColor = .blue
        self.mainView.setupView()
        
        self.mainView.tableview.delegate = self
        self.mainView.tableview.dataSource = self
        self.mainView.tableview.register(DataCell.self, forCellReuseIdentifier: "datacell")
        
        
        self.viewModel.getData { (response) in
            self.mainView.tableview.reloadData()
        }
        
        
    }


}


extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let model = self.viewModel.model else{return 1}
        return model.results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "datacell", for: indexPath) as! DataCell
    
        cell.mainLabel.text = self.viewModel.model?.results[indexPath.row].artistName
        
        
        
        return cell
    }
    
    
}
