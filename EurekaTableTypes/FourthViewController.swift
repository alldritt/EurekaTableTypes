//
//  FourthViewController.swift
//  EurekaInsetGroupedTable
//
//  Created by Mark Alldritt on 2020-06-21.
//  Copyright © 2020 Mark Alldritt. All rights reserved.
//

import UIKit
import Eureka


class FourthViewController: FormViewController {

    override func viewDidLoad() {
        tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.cellLayoutMarginsFollowReadableWidth = false

        super.viewDidLoad()
        
        form +++ Section("Table Type")
            <<< LabelRow { (row) in
                row.title = "Style"
                row.value = ".grouped"
            }
            <<< LabelRow { (row) in
                row.title = "cellLayoutMarginsFollowReadableWidth"
                row.value = "false"
            }
        
        form +++ Section("Section 2")
            <<< ButtonRow() { (row) in
                row.title = "Button 1"
            }
            <<< LabelRow() { (row) in
                row.title = "Label"
                row.value = "Value"
            }
            <<< SwitchRow() { (row) in
                row.title = "Switch"
            }
    }


}

