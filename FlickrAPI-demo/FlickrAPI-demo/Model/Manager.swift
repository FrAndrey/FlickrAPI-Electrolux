//
//  Manager.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-21.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit

class Network {
    
    //key parameters for api request
    let apiKey:String = "425afaf8cea642ddd8b331034da5489f"
    let mySecret:String = "419125707b857f8a"
    let searchTag:String = "electrolux"
    let receivedFormat:String = "json&nojsoncallback=1"
    
    
    // make an api request
    func FetchData() {
        
    var apiUrl:String = "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&tags=\(searchTag)&format=\(receivedFormat)"
    let url = URL(string: apiUrl)!
        
        
                 
    }

}
