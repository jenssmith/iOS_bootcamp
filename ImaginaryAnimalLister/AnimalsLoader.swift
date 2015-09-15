//
//  AnimalsLoader.swift
//  ImaginaryAnimalLister
//
//  Created by Mimi Chow on 9/14/15.
//  Copyright © 2015 AthenaHealth. All rights reserved.
//

import Foundation

struct AnimalsLoader {
    func loadAnimals() -> [imaginaryanimal] {
        
        let a = imaginaryanimal(name: "Mermaid",
            height: 1.5,
            location: "Oceans",
            dateLastSeen: "1858",
            imageURL: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/2/2a/Waterhouse_a_mermaid.jpg"))
        
        let b = imaginaryanimal(name: "Loch Ness Monster",
            height: 31,
            location: "Scotland",
            dateLastSeen: "1951",
            imageURL: NSURL(string: "http://jenprdv300.athenahealth.com:8080/view/15.8/view/15.8%20athenaText/job/iOS_15.8_iPhone_athenaText_Enterprise_NonNPI/Image_Comparison_Report_iOS7/BaseImage/STM/testAuthentication-/testAuthentication-0.jpg"))
        
        let c = imaginaryanimal(name: "Bigfoot",
            height: 2.1,
            location: "North America",
            dateLastSeen: "1963",
            imageURL: NSURL(string: ""))
        
        let d = imaginaryanimal(name: "Ogopogo",
            height: 3.2,
            location: "OK, Canada",
            dateLastSeen: "1987",
            imageURL: NSURL(string: ""))
        
        return [a, b, c, d]
    }
}