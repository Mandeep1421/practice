//
//  TableViewCell.swift
//  Demo
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell
{

    @IBOutlet weak var Fname: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var pass: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
