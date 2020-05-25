//
//  ViewController.swift
//  AddingCellsTableViewTest
//
//  Created by Gregory Keeley on 5/24/20.
//  Copyright © 2020 Gregory Keeley. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    @IBOutlet weak var addNameButton: UIButton!
    @IBOutlet weak var deleteFirstNameButton: UIButton!
    @IBOutlet weak var deleteLastNameButton: UIButton!
    @IBOutlet weak var deleteNickNameButton: UIButton!
    @IBOutlet weak var deleteMiddleNameButton: UIButton!
    
    var numberOfSections = 1 {
        didSet {
            tableView.reloadData()
        }
    }
 //MARK:- Number of rows for each section
    var numberOfRowsInSection1 = 1 {
        didSet {
            if numberOfRowsInSection1 == 5 {
                addNameButton.isEnabled = false
            }
            tableView.reloadData()
            //Note: First attempt at animation for tableview
//            let indexPath = IndexPath(row: numberOfRowsInSection1, section: 0)
//            tableView.beginUpdates()
//            tableView.reloadRows(at: [indexPath], with: .fade)
//            tableView.endUpdates()
        }
    }
    var numberOfRowsInSection2 = 1 {
        didSet {
            tableView.reloadData()
        }
    }
    var numberOfRowsInSection3 = 1 {
        didSet {
            tableView.reloadData()
        }
    }
    var numberOfRowsInSection4 = 1 {
        didSet {
            tableView.reloadData()
        }
    }
  //MARK:- viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        configureController()
    }
    private func configureController() {
        deleteFirstNameButton.tintColor = UIColor.systemRed
        deleteLastNameButton.tintColor = UIColor.systemRed
        deleteMiddleNameButton.tintColor = UIColor.systemRed
        deleteNickNameButton.tintColor = UIColor.systemRed
    }
//MARK:- Add Rows
    @IBAction func addRowsSection1(_ sender: UIButton) {
        numberOfRowsInSection1 += 1
    }
    @IBAction func addRowsSection2(_ sender: UIButton) {
        numberOfRowsInSection2 += 1
    }
    @IBAction func addRowsSection3(_ sender: UIButton) {
        numberOfRowsInSection3 += 1
    }
    @IBAction func addRowsSection4(_ sender: UIButton) {
        numberOfRowsInSection4 += 1
    }
    //MARK:- Delete rows
    @IBAction func deleteFirstNamePressed(_ sender: UIButton) {
    }
    @IBAction func deleteLastNamePressed(_ sender: UIButton) {
        
    }
    @IBAction func deleteMiddleNamePressed(_ sender: UIButton) {
        
    }
    @IBAction func deleteNickNamePressed(_ sender: UIButton) {
        
    }
    
    @IBAction func addSectionButtonPressed(_ sender: UIButton) {
        numberOfSections += 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return numberOfRowsInSection1
        case 1:
            return numberOfRowsInSection2
        case 2:
            return numberOfRowsInSection3
        case 3:
            return numberOfRowsInSection4
        default:
            return 1
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
}

