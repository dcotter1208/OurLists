//
//  PreviousItemsViewController.swift
//  OurLists
//
//  Created by Donovan Cotter on 4/18/18.
//  Copyright © 2018 DonovanCotter. All rights reserved.
//

import UIKit

class PreviousItemsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var previousItemsTableView: UITableView!
    
    var previousItems = [ListItem]()
    private let previousItemCellIdentifier = "PreviousItemCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPreviousItems()
    }
    
    //Placeholder data
    func loadPreviousItems() {
        let item1 = Item(name: "grapes")
        let item2 = Item(name: "apples")
        let item3 = Item(name: "carrots")
        let item4 = Item(name: "hummus")
        let item5 = Item(name: "buns")
        previousItems = [item1, item2, item3, item4, item5]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return previousItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: previousItemCellIdentifier, for: indexPath)
        let item = previousItems[indexPath.row]
        cell.textLabel?.text = item.name
        
        return cell
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
