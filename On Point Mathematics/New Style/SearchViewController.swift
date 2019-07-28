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
    }
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    var isSearching = false
    var searchCalc = [String?]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if isSearching{
            return searchCalc.count
        } else {
            return Int(allItems.count)
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath)
        
        if isSearching == true{
            cell.textLabel?.text = searchCalc[indexPath.row]
            cell.detailTextLabel?.text = ""
        } else if isSearching == false || SearchBar.text == ""{
            cell.textLabel?.text = allItems[indexPath.row].title
            cell.detailTextLabel?.text = allItems[indexPath.row].group
        }
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //searchCalc = allItems.filter({$0.title.lowercased().prefix(searchText.count) == searchText.lowercased()})
        
            searchCalc = [String]()
            let matches = allItems.filter({$0.title.lowercased().prefix(searchText.count) == searchText.lowercased()})
            for match in matches{
                searchCalc.append(match.title)
            }
//        //SubMatches allow the user to search for the subtitles of items (the section group for items)
        
//        let SubMatches = allItems.filter({$0.group.lowercased().prefix(searchText.count) == searchText.lowercased()})
//        for SMatch in SubMatches{
//            searchCalc.append(SMatch.group)
//        }
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
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedCalcID = allItems[indexPath.row].id
        selectedCalcName = allItems[indexPath.row].title
    }
    
}

