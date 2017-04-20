//
//  TableOne.swift
//  multipleTableView
//
//  Created by Burak Colak on 4/20/17.
//  Copyright © 2017 cool. All rights reserved.
//

import UIKit

class TableDataSource: NSObject, GeneralDataSource{
    
    var array = [String]()
    
    init(array : [String]) {
        self.array = array
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! Cell
        
        cell.label.text = self.array[indexPath.row]
        
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
}
