//
//  FoundTableViewCell.swift
//  message
//
//  Created by 王帅广 on 2017/5/21.
//  Copyright © 2017年 王帅广. All rights reserved.
//

import UIKit

class FoundTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
