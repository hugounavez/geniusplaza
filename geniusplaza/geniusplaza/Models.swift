//
//  Models.swift
//  geniusplaza
//
//  Created by Hugo Reyes on 7/19/19.
//  Copyright © 2019 Hugo Reyes. All rights reserved.
//

import Foundation


struct MediaObject: Codable{
    var artistName: String
    var id: String
    var releaseDate: String
    var name: String
    var kind: String
    var artistUrl: String

    enum CodingKeys: String, CodingKey{
        case artistName
        case id
        case releaseDate
        case name
        case kind
        case artistUrl
    }
}


struct InfoFeed: Codable{
    var title: String
    var results: [MediaObject]
    enum CodingKeys: String, CodingKey{
        case title
        case results
    }
}



struct ResponseModel: Codable {
    var feed: InfoFeed
    enum CodingKeys: String, CodingKey{
        case feed
    }
}

