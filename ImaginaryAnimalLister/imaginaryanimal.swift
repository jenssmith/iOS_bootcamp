//
//  imaginaryanimal.swift
//  ImaginaryAnimalLister
//
//  Created by Mimi Chow on 9/14/15.
//  Copyright © 2015 AthenaHealth. All rights reserved.
//

import Foundation

//diff between struct and class
// no inheritance in struct
// struct also has protocol
// struct - state is copied; object - state is by reference
struct imaginaryanimal {
    var name: String
    var height: Float
    var location: String
    var dateLastSeen: String
    var imageURL: NSURL?
    
    init?(fromJSON json: AnyObject) {
        
        guard let json = json as? [String:AnyObject] else {
            return nil
        }
        
        name = json["name"] as! String
        height = json["height"] as! Float
        location = json["location"] as! String
        dateLastSeen = json["dateLastSeen"] as! String
        
        if let imageURLString = json["imageURL"] as? String {
            imageURL = NSURL(string: imageURLString)
        }
    }
}