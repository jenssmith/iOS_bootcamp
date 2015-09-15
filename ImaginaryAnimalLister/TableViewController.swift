//
//  TableViewController.swift
//  ImaginaryAnimalLister
//
//  Created by Mimi Chow on 9/14/15.
//  Copyright © 2015 AthenaHealth. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var animalsArray:[imaginaryanimal]
    
    // ? - the return value could be null
    required init?(coder aDecoder: NSCoder) {
        animalsArray = AnimalsLoader().loadAnimals()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalsArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        let animal = animalsArray[indexPath.row]
        cell.textLabel?.text = "\(indexPath.row+1). \(animal.name)"  //? - optional: textLabel might or might not be there. if there, continue with statement

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destinationViewController = segue.destinationViewController as? DetailViewController,
            let selectedIndex = self.tableView.indexPathForSelectedRow?.row
        {
            let selectedAnimal = animalsArray[selectedIndex]
            destinationViewController.animal = selectedAnimal
        }
    }
}
