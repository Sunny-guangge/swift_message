//
//  FoundViewController.swift
//  message
//
//  Created by 王帅广 on 2017/5/21.
//  Copyright © 2017年 王帅广. All rights reserved.
//

import UIKit

class FoundViewController: UIViewController {

    fileprivate let tableView : UITableView = {
        let tableView = UITableView(frame:CGRect.zero, style:.grouped)
        tableView.register(UINib.init(nibName: "FoundTableViewCell", bundle: nil), forCellReuseIdentifier: "FoundTableViewCell")
        return tableView
    }()
    
    fileprivate let datasource : [[(name:String,iconImage:String)]] = [
        [
            ("朋友圈", "ff_IconShowAlbum"),
        ],
        [
            ("扫一扫", "ff_IconQRCode"),
            ("摇一摇", "ff_IconShake"),
            ],
        [
            ("附近的人", "ff_IconLocationService"),
            ("漂流瓶", "ff_IconBottle"),
            ],
        [
            ("游戏", "MoreGame"),
        ],
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "发现"
        self.view.addSubview(tableView)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.frame = CGRect(x:0,y:0,width:self.view.frame.size.width,height:self.view.frame.size.height)
    }

}

extension FoundViewController : UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.datasource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let array = self.datasource[section]
        return array.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell :FoundTableViewCell = tableView.dequeueReusableCell(withIdentifier: "FoundTableViewCell") as! FoundTableViewCell
        let item = self.datasource[indexPath.section][indexPath.row]
        cell.avatarImageView.image = UIImage(named: item.iconImage)
        cell.nameLabel.text = item.name
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 10
        }
        return 15
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
}


