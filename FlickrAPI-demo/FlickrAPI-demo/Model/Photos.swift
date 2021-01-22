//
//  Photos.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-21.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit


struct Response: Decodable {
    
    let photos:Photos
}

  struct Photos: Codable{
        
        //collection of the general information about photos
        let page:Int
        let pages:Int
        let perpage:Int
        let photo:[Photo]
        }
    
    struct Photo : Codable{
        
        //main parameters for grabbing the url for each photo
        // link is of the following format var
        // https://live.staticflickr.com/{server-id}/{id}_{secret}_c.jpg
        
        let id: String
        let secret: String
        let server: String
        
        init(id: String, secret: String, server: String) {
            self.id = id
            self.secret = secret
            self.server = server
        }

        enum CodingKeys: String, CodingKey {
            case id = "id"
            case secret = "secret"
            case server = "server"
        }
    }

