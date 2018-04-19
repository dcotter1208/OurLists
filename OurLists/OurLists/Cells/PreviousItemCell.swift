//
//  PreviousItemCell.swift
//  OurLists
//
//  Created by Donovan Cotter on 4/18/18.
//  Copyright © 2018 DonovanCotter. All rights reserved.
//

import UIKit

class PreviousItemCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func editItem(_ sender: Any) {
        print("*EDITING ITEM*")
    }
    
    
}
