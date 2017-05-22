//
//  messageModel.swift
//  message
//
//  Created by 王帅广 on 2017/5/14.
//  Copyright © 2017年 王帅广. All rights reserved.
//

import UIKit
import ObjectMapper

class messageModel: NSObject , Mappable {
    
    var avatarUrl :String?
    var nickName : String?
    var type : messageType = messageType.Personal
    var dateString : String?
    var message:String?
    
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map){
        avatarUrl <- map["avatar_url"]
        nickName <- map["nickname"]
        type <- (map["meesage_from_type"] , EnumTransform<messageType>())
        dateString <- map["ctime"]
        message <- map["message"]
    }
}


enum messageType : String{
    //消息来源类型
    case System = "0"   // 0是系统
    case Personal = "1"   // 1是个人
    case Group  = "2" // 2是群组
    case PublicServer = "3"  // 服务号
    case PublicSubscribe = "4"   //订阅号
    
}
