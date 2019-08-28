//
//  SearchViewController.swift
//  On Point Mathematics
//
//  Created by Emmett Shaughnessy on 7/24/19.
//  Copyright © 2019 Emmett S. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        SearchBar.delegate = self
        SearchBar.returnKeyType = UIReturnKeyType.done
        
        if UnivCheckEasyModeState() == 0{
            performSegue(withIdentifier: "EasyModeOff", sender: self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UnivCheckEasyModeState() == 0{
            performSegue(withIdentifier: "EasyModeOff", sender: self)
        }
    }
    
    
    
    
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    var isSearching = false
    var searchCalc = [Headline]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if isSearching{
            return searchCalc.count
        } else {
            return Int(allItems.count)
        }
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath)
       
        let items: Headline
        if isSearching {
            items = searchCalc[indexPath.row]
        } else {
            items = allItems[indexPath.row]
        }
        cell.textLabel!.text = items.title
        cell.detailTextLabel!.text = items.group
        return cell
    }
    
    
    
    
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchCalc = allItems.filter({( item : Headline) -> Bool in
            return item.title.lowercased().contains(searchText.lowercased())
        })
        
        if searchBar.text == ""{
            isSearching = false
        }else if searchBar.text != ""{
            isSearching = true
        }
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isSearching = false
        searchBar.text = ""
        self.view.endEditing(true)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isSearching{
            selectedCalcName = searchCalc[indexPath.row].title
            selectedCalcID = searchCalc[indexPath.row].id
            performSegue(withIdentifier: "ResultsSegue", sender: self)
        }else{
            selectedCalcName = allItems[indexPath.row].title
            selectedCalcID = allItems[indexPath.row].id
            performSegue(withIdentifier: "ResultsSegue", sender: self)
        }
       
    }
    


}
