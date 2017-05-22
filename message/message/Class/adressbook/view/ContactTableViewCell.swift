//
//  ContactTableViewCell.swift
//  WSGWeChat
//
//  Created by 王帅广 on 2017/4/24.
//  Copyright © 2017年 王帅广. All rights reserved.
//

import UIKit
import Kingfisher

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupContactData(contack : ContactModel) {
        let url = URL.init(string: contack.avatar_url!)
        self.avatarImageView.kf.setImage(with: url)
        self.nameLabel.text = contack.name
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
