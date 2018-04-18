//
//  ItemDetailViewController.swift
//  OurLists
//
//  Created by Donovan Cotter on 4/18/18.
//  Copyright © 2018 DonovanCotter. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var amountLabel: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    
    var item: ListItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadItemInformation()
    }

    private func loadItemInformation() {
        if let safeItem = item {
            nameLabel.text = safeItem.name
            amountLabel.text = "\(safeItem.amount)"
            if let notes = safeItem.notes {
                notesTextView.text = notes
            }
        }
    }
    
    @IBAction func save(_ sender: Any) {
        
    }
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
 
}
