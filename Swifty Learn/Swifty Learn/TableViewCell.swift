//
//  TableViewCell.swift
//  Swifty Learn
//
//  Created by Brijesh Makwana on 22/05/1941 Saka.
//  Copyright © 1941 Brijesh Makwana. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
