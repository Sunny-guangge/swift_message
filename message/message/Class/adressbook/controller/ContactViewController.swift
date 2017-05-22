//
//  ContactViewController.swift
//  WSGWeChat
//
//  Created by 王帅广 on 2017/4/24.
//  Copyright © 2017年 王帅广. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableview = UITableView(frame: CGRect.zero, style:.plain)
        tableview.separatorStyle = .none
        tableview.backgroundColor = .clear
        tableview.tableFooterView = UIView()
        tableview.register(UINib.init(nibName: "ContactTableViewCell", bundle: nil), forCellReuseIdentifier: "ContactTableViewCell")
        return tableview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "通讯录"
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.frame = CGRect(x:0,y:0,width:view.frame.size.width,height:view.frame.size.height);
        tableView.delegate = self
        tableView.dataSource = self
        loadJsonData()
    }
    
    func loadJsonData() {
        
    }

}

extension ContactViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0
    }
}

extension ContactViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as! ContactTableViewCell
        cell.textLabel?.text = "index" + indexPath.row.description
        cell.backgroundColor = .blue
        return cell
    }
}
