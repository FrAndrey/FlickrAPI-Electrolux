//
//  Manager.swift
//  FlickrAPI-demo
//
//  Created by Andrey on 2021-01-21.
//  Copyright © 2021 Andrey. All rights reserved.
//

import UIKit

class Manager {
    
    //key parameters for the api request
    let apiKey:String = "425afaf8cea642ddd8b331034da5489f"
    let mySecret:String = "419125707b857f8a"
    let searchTag:String = "electrolux"
    let receivedFormat:String = "json&nojsoncallback=1"
    
    
    // make an api request
    func FetchData(completionHandler: @escaping ([Photo]) -> Void) {
        
        var apiUrl:String = "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&tags=\(searchTag)&format=\(receivedFormat)"
        let url = URL(string: apiUrl)!
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            
            //ensure there are no errors
            if let error = error {
                print("Error with data request \(error)")
                return
            }
            //ensure response is successfull
            guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode) else {
                    print("Error with the response, status code \(response)")
                    return
            }
            //decode the JSON response
                if let data = data,
                let photoSummary = try? JSONDecoder().decode(Response.self, from: data) {
                    completionHandler(photoSummary.photos.photo )
              }
            })
        task.resume()
    }
}
