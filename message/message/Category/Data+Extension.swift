//
//  Data+Extension.swift
//  message
//
//  Created by 王帅广 on 2017/5/21.
//  Copyright © 2017年 王帅广. All rights reserved.
//

import Foundation

extension Data{
    static func dataFromJsonFile(jsonFileName:String) -> Data?{
        if let path = Bundle.main.path(forResource: jsonFileName, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL.init(fileURLWithPath: path), options: Data.ReadingOptions.mappedIfSafe)
                return data
            } catch let error as NSError {
                print(error.localizedDescription)
                return nil
            }
        }else{
            print("Invalid filename/path.")
            return nil
        }
    }
}
