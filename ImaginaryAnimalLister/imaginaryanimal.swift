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
}