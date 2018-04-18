//
//  ListsViewController.swift
//  OurLists
//
//  Created by Donovan Cotter on 4/15/18.
//  Copyright © 2018 DonovanCotter. All rights reserved.
//

import UIKit

class ListsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var listTableview: UITableView!
    private var lists = [PlaceList]()
    private let listCellIdentifier = "ListCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadLists()
        self.listTableview.reloadData()
    }

    //This is just place holder d
    private func loadLists() {
        let item1 = Item(name: "grapes")
        let item2 = Item(name: "apples")
        let item3 = Item(name: "carrots")
        let item4 = Item(name: "hummus")
        let item5 = Item(name: "buns")
        
        let list1 = List(name: "Kroger", items: [item1, item2, item3, item4, item5])
        self.lists = [list1]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: listCellIdentifier, for: indexPath) as UITableViewCell
        let list = self.lists[indexPath.row]
        cell.textLabel?.text = list.name
        
        return cell
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = listTableview.indexPathForSelectedRow,
              let listItemsViewController = segue.destination as? ListItemsViewController else { return }

        listItemsViewController.items = lists[indexPath.row].items
     }

}
