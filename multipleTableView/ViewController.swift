//
//  ViewController.swift
//  multipleTableView
//
//  Created by Burak Colak on 4/20/17.
//  Copyright © 2017 cool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var table:UITableView!
    
    var generalDataSource:GeneralDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = ["apple","orange"]
        self.generalDataSource = TableDataSource(array: array)
        
        self.table.delegate = self.generalDataSource
        self.table.dataSource = self.generalDataSource

        self.table.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

