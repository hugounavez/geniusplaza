//
//  ViewControllerViewModel.swift
//  geniusplaza
//
//  Created by Hugo Reyes on 7/19/19.
//  Copyright © 2019 Hugo Reyes. All rights reserved.
//

import Foundation

class ViewControllerViewModel: NSObject{
    let networkManager = NetworkManager()
    var model : InfoFeed?
    
    
    func getData(completion: @escaping (_ result: Bool)->()) {
        self.networkManager.getData { (response) in
            if let responseUnwrapped = response{
                self.model = responseUnwrapped.feed
                return completion(false)
                
            }
            
            
            completion(true)
        }
        

    }
    
    
    
    
    
}
