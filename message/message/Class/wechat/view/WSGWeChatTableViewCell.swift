//
//  WSGWeChatTableViewCell.swift
//  WSGWeChat
//
//  Created by 王帅广 on 2016/12/18.
//  Copyright © 2016年 王帅广. All rights reserved.
//

import UIKit
import Foundation
import Kingfisher

class WSGWeChatTableViewCell: UITableViewCell {
    
    public let textField :UITextField = {
        let textField = UITextField()
        
        return textField;
    }()
    
    fileprivate let avatarImageView :UIImageView = {
        let avatarImageView = UIImageView()
        avatarImageView.image = UIImage(named:"avater.jpg")
        avatarImageView.layer.masksToBounds = true;
        avatarImageView.layer.cornerRadius = 5;
        return avatarImageView;
    }()
    
    fileprivate let nameLabel : UILabel = {
       let nameLabel = UILabel()
        nameLabel.font = UIFont(name:"Lato-Bold", size:16)
        nameLabel.textColor = UIColor.black
        return nameLabel;
    }()
    
    fileprivate let detailLabel : UILabel = {
        let detailLabel = UILabel()
        detailLabel.font = UIFont(name:"Lato-Bold", size:12)
        detailLabel.textColor = UIColor.gray
        return detailLabel;
    }()
    
    fileprivate let timeLabel : UILabel = {
        let timeLabel = UILabel()
        timeLabel.font = UIFont(name:"Lato-Bold", size:12)
        timeLabel.textColor = UIColor.gray
        timeLabel.textAlignment = .right;
        return timeLabel;
    }()
    
    override init(style:UITableViewCellStyle ,reuseIdentifier:String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        
        contentView.addSubview(avatarImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(detailLabel)
        contentView.addSubview(timeLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        avatarImageView.frame = CGRect(x:10 ,y:5,width:40,height:40)
        nameLabel.frame = CGRect(x:60, y:5,width:contentView.frame.size.width - 140,height:20)
        detailLabel.frame = CGRect(x:60,y:25,width:contentView.frame.size.width - 140,height:20);
        timeLabel.frame = CGRect(x:(contentView.frame.size.width - 90),y:5,width:80,height:15)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setmessageModel(message: messageModel) {
        let url = URL.init(string: message.avatarUrl!)
        avatarImageView.kf.setImage(with: url)
        nameLabel.text = message.nickName;
        detailLabel.text = message.message;
        timeLabel.text = message.dateString;
    }
    
    func setWeChatListData(weChat:WSGWeChat) {
        avatarImageView.image = UIImage(named:weChat.imageURL!);
        nameLabel.text = weChat.name;
        detailLabel.text = weChat.message;
        timeLabel.text = weChat.time;
    }
}
