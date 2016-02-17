//
//  WordsTableViewController.swift
//  xLanguageSketch
//
//  Created by cscoi024 on 2016. 2. 17..
//  Copyright © 2016년 stanislav. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController, UISearchResultsUpdating {

    var words = ["Appropriate", "Bear", "Collection", "Download", "Exactly", "Function", "Government"]
    var filteredWords = [String]()
    
    var searchController : UISearchController!
    var resultsController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resultsController.tableView.dataSource = self
        self.resultsController.tableView.delegate = self
        
        self.searchController = UISearchController(searchResultsController: self.resultsController)
        self.tableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
    }
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        self.filteredWords = self.words.filter { (word:String) -> Bool in
            if word.lowercaseString.containsString(self.searchController.searchBar.text!.lowercaseString) {
                return true
            } else {
                return false
            }
        }
        
        self.resultsController.tableView.reloadData()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tableView {
            return self.words.count
        } else {
            return self.filteredWords.count
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if tableView == self.tableView {
            cell.textLabel?.text = self.words[indexPath.row]
        } else {
            cell.textLabel?.text = self.filteredWords[indexPath.row]
        }
        return cell
    }
}
