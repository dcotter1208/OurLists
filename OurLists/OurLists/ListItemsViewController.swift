//
//  ListItemsViewController.swift
//  OurLists
//
//  Created by Donovan Cotter on 4/15/18.
//  Copyright © 2018 DonovanCotter. All rights reserved.
//

import UIKit

class ListItemsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var items = [ListItem]()
    private let itemCellIdentifier = "ItemCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: itemCellIdentifier, for: indexPath)
        let item = items[indexPath.row]
        cell.textLabel?.text = "\(item.name): \(item.amount)"
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
