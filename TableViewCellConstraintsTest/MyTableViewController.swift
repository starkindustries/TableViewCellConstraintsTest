//
//  MyTableViewController.swift
//  TableViewCellConstraintsTest
//
//  Created by Zion Perez on 4/24/17.
//  Copyright © 2017 Zion Perez. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    let myCell = "MyCell"
    let myCopyPasteCell = "MyCopyPasteTableViewCell"
    let myPrototypeCell = "MyPrototypeCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: myCell, bundle: nil), forCellReuseIdentifier: myCell)
        tableView.register(UINib(nibName: myCopyPasteCell, bundle: nil), forCellReuseIdentifier: myCopyPasteCell)
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 300
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: myCell, for: indexPath)
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: myCopyPasteCell, for: indexPath)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: myPrototypeCell, for: indexPath)
            return cell
        }
    }
}
