//
//  List.swift
//  OurLists
//
//  Created by Donovan Cotter on 4/15/18.
//  Copyright © 2018 DonovanCotter. All rights reserved.
//

import Foundation

protocol PlaceList {
    var name: String {get}
    var items: Array<ListItem> {get set}
    
    mutating func clear()
}

struct List: PlaceList {
    let name: String
    var items: Array<ListItem>
    
    mutating func clear() {
        self.items.removeAll()
    }
}
