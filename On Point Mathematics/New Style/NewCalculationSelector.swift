//
//  NewCalculationSelector.swift
//  On Point Mathematics
//
//  Created by Emmett Shaughnessy on 7/22/19.
//  Copyright © 2019 Emmett S. All rights reserved.
//

import UIKit
var Section:Int = 0
//Section is equal to "section" as defined in titleForHeaderInSection

class NewCalculationSelector: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        view.tintColor = UIColor(red:0.40, green:0.69, blue:0.90, alpha:1.0)
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return allSections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rowsCount: Int = allSections[Section].items.count
        
        return rowsCount
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

       cell.textLabel?.text = allSections[indexPath.section].items[indexPath.row].title
        
        
        return cell
    }

    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        Section = section
        
        return "\(allSections[section].title)"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedCalcID = allSections[indexPath.section].items[indexPath.row].id
        selectedCalcName = allSections[indexPath.section].items[indexPath.row].title
        
        performSegue(withIdentifier: "showResults", sender: self)
    }
    
    
    
    
    
   
}
