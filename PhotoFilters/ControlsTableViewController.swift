//
//  ControlsTableViewController.swift
//  PhotoFilters
//
//  Created by Misael Pérez Chamorro on 10/18/14.
//  Copyright (c) 2014 Misael Pérez Chamorro. All rights reserved.
//

import UIKit

class ControlsTableViewController: UITableViewController {
  
  var controls = ["UIView", "UITextField", "UIButton", "UICollectionView","UIImage"]
  
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
  
        return controls.count
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ControlCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = controls[indexPath.row]
        return cell
    }

}
