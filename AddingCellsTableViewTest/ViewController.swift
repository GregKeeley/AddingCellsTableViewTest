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
            
        }
    }
 //MARK:- Number of rows for each section
    var numberOfRowsInSection1 = 1 {
        didSet {
            if numberOfRowsInSection1 == 5 {
                addNameButton.isEnabled = false
            } else {
                addNameButton.isEnabled = true
            }
            print(numberOfRowsInSection1)
//            tableView.reloadData()
        }
    }
    var numberOfRowsInSection2 = 1 {
        didSet {
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
    private func addRows(numOfRows: Int, section: Int) {
        let indexPath = IndexPath(row: numOfRows - 1, section: section)
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .right)
        tableView.endUpdates()
    }
    @IBAction func addRowsSection1(_ sender: UIButton) {
        numberOfRowsInSection1 += 1
        addRows(numOfRows: numberOfRowsInSection1, section: 0)
    }
    @IBAction func addRowsSection2(_ sender: UIButton) {
        numberOfRowsInSection2 += 1
        let indexPath = IndexPath(row: numberOfSections, section: 0)
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .right)
        tableView.endUpdates()
    }
    @IBAction func addRowsSection3(_ sender: UIButton) {
        numberOfRowsInSection3 += 1
    }
    @IBAction func addRowsSection4(_ sender: UIButton) {
        numberOfRowsInSection4 += 1
    }
    //MARK:- Delete rows
    private func deleteRows(row: Int, section: Int) {
        let indexPath = IndexPath(row: row, section: section)
        tableView.beginUpdates()
        tableView.reloadRows(at: [indexPath], with: .fade)
        tableView.endUpdates()
    }
    @IBAction func deleteFirstNamePressed(_ sender: UIButton) {
        deleteRows(row: 1, section: 0)
        numberOfRowsInSection1 -= 1
        tableView.reloadData()
    }
    @IBAction func deleteLastNamePressed(_ sender: UIButton) {
        deleteRows(row: 2, section: 0)
        numberOfRowsInSection1 -= 1
        tableView.reloadData()
    }
    @IBAction func deleteMiddleNamePressed(_ sender: UIButton) {
        deleteRows(row: 3, section: 0)
        numberOfRowsInSection1 -= 1
        tableView.reloadData()
    }
    @IBAction func deleteNickNamePressed(_ sender: UIButton) {
        deleteRows(row: 4, section: 0)
        numberOfRowsInSection1 -= 1
        tableView.reloadData()
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

