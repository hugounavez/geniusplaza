//
//  NetworkManager.swift
//  geniusplaza
//
//  Created by Hugo Reyes on 7/19/19.
//  Copyright © 2019 Hugo Reyes. All rights reserved.
//

import Alamofire


class NetworkManager: NSObject {
    
    func getData(completion: @escaping (ResponseModel?) -> Void) {
        let urlString = "https://rss.itunes.apple.com/api/v1/us/books/top-free/all/10/explicit.json"
        
        Alamofire.request(urlString).response { response in
            guard let data = response.data else { return }
            do {
                let decoder = JSONDecoder()
                let responseModel = try decoder.decode(ResponseModel.self, from: data)
                completion(responseModel)
            } catch let error {
                print(error)
                completion(nil)
            }
        }
    }
}


