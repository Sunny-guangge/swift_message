//
//  ContactModel.swift
//  WSGWeChat
//
//  Created by 王帅广 on 2017/4/24.
//  Copyright © 2017年 王帅广. All rights reserved.
//

import UIKit
import ObjectMapper

class ContactModel: NSObject,Mappable{

    var phone : String?
    var name_spell: String?
    var avatar_url : String?
    var name : String?
    var userid: String?
    
    required init?(map: Map) {
        
    }
    
    override init() {
        super.init()
    }
    
    func mapping(map: Map) {
        phone <- map["phone"]
        name_spell <- map["name_spell"]
        avatar_url <- map["avatar_url"]
        name <- map["name"]
        userid <- map["userid"]
    }
}
