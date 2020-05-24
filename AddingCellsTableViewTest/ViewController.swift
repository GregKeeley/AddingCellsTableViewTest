//
//  ViewController.swift
//  AddingCellsTableViewTest
//
//  Created by Gregory Keeley on 5/24/20.
//  Copyright © 2020 Gregory Keeley. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var numberOfSections = 1 {
        didSet {
            tableView.reloadData()
        }
    }
    
    var numberOfRowsInSection1 = 1 {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}

