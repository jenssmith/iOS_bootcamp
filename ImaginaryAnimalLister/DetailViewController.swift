//
//  DetailViewController.swift
//  ImaginaryAnimalLister
//
//  Created by Mimi Chow on 9/14/15.
//  Copyright © 2015 AthenaHealth. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var animal: imaginaryanimal?
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var animalLocation: UILabel!
    @IBOutlet weak var animalHeight: UILabel!
    @IBOutlet weak var animalDateSeen: UILabel!
    @IBOutlet weak var urlView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = animal?.imageURL,
            let imageData = NSData(contentsOfURL: url) {
                self.urlView.image = UIImage(data: imageData)
        }
        
        if let name = animal?.name {
            self.animalName.text = name
        }
        
        if let location = animal?.location {
            self.animalLocation.text = location
        }
        
        if let height = animal?.height {
            self.animalHeight.text = height.description
        }
        
        if let dateSeen = animal?.dateLastSeen {
            self.animalDateSeen.text = dateSeen
        }
    }
}
