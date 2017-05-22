//
//  WSGWeChatViewController.swift
//  WSGWeChat
//
//  Created by 王帅广 on 2016/12/18.
//  Copyright © 2016年 王帅广. All rights reserved.
//

import UIKit
import SwiftyJSON
import ObjectMapper

class WSGWeChatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var weChat:[WSGWeChat] = [];//数组
    var tableview1:UITableView?
    var list = [messageModel]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "微信";
        
        tableview1 = UITableView(frame: CGRect(x:0,y:0,width:self.view.frame.size.width,height:self.view.frame.size.height));
        tableview1?.delegate = self
        tableview1?.dataSource = self
        tableview1?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableview1?.tableFooterView = UIView();
        tableview1?.register(WSGWeChatTableViewCell.self, forCellReuseIdentifier: "WSGWeChatTableViewCell")
        self.view.addSubview((tableview1)!);
        fetchJsonData();
    }
    
    func fetchJsonData() -> Void {
        let path = Bundle.main.path(forResource: "message", ofType: "json")
        if path != nil{
            
            do {
                let jsonData = try Data(contentsOf: URL(fileURLWithPath: path!), options: NSData.ReadingOptions.mappedIfSafe)
                
                let jsonObject = JSON(data : jsonData)
                var listlist = [messageModel]()
                if jsonObject != JSON.null{
                    for dict in jsonObject["data"].arrayObject! {
                        guard let model = Mapper<messageModel>().map(JSON: dict as! [String : Any]) else{continue}
                        listlist.insert(model, at: listlist.count)
                    }
                    self.list.insert(contentsOf: listlist, at: 0)
                    self.list.insert(contentsOf: listlist, at: 1)
                    self.list.insert(contentsOf: listlist, at: 2)
                    tableview1?.reloadData()
                }
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.list.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WSGWeChatTableViewCell", for: indexPath) as! WSGWeChatTableViewCell;
        
        cell.setmessageModel(message: self.list[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50;
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension Array{
    
}
