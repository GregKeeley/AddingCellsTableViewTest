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
    

    @IBAction func addRowSection1ButtonPressed(_ sender: UIButton) {
        numberOfRowsInSection1 += 1
    }
    @IBAction func addSectionButtonPressed(_ sender: UIButton) {
        numberOfSections += 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRowsInSection1
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections
    }
}

