//
//  Item.swift
//  OurLists
//
//  Created by Donovan Cotter on 4/15/18.
//  Copyright © 2018 DonovanCotter. All rights reserved.
//

import Foundation

protocol ListItem {
    var name: String {get set}
    var amount: Int {get set}
    var notes: String? {get set}
}

struct Item: ListItem {
    var name: String
    var amount: Int
    var notes: String?
    
    init(name: String, amount: Int = 1, notes: String? = nil) {
        self.name = name
        self.amount = amount
        self.notes = notes
    }
}
