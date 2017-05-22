//
//  WSGTabBarViewController.swift
//  WSGWeChat
//
//  Created by 王帅广 on 2017/2/26.
//  Copyright © 2017年 王帅广. All rights reserved.
//

import UIKit

class WSGTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tabbarItem1 : UITabBarItem = self.tabBar.items![0];
        let tabbarItem2 : UITabBarItem = self.tabBar.items![1];
        let tabbarItem3 : UITabBarItem = self.tabBar.items![2];
        let tabbarItem4 : UITabBarItem = self.tabBar.items![3];
        tabbarItem1.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.lightGray], for: UIControlState());
        tabbarItem1.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(wsg_hexString: "#68BB1E")], for: .selected)
        
        tabbarItem2.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.lightGray], for: UIControlState());
        tabbarItem2.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(wsg_hexString: "#68BB1E")], for: .selected)
        
        tabbarItem3.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.lightGray], for: UIControlState());
        tabbarItem3.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(wsg_hexString: "#68BB1E")], for: .selected)
        
        tabbarItem4.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.lightGray], for: UIControlState());
        tabbarItem4.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(wsg_hexString: "#68BB1E")], for: .selected)
        
        let image1:UIImage = (UIImage.init(named: "tabbar_mainframe")?.withRenderingMode(.alwaysOriginal))!;
        let image1Sel:UIImage = (UIImage.init(named: "tabbar_mainframeHL")?.withRenderingMode(.alwaysOriginal))!;
        tabbarItem1.selectedImage = image1Sel;
        tabbarItem1.image = image1;
        
        let image2:UIImage = (UIImage.init(named: "tabbar_contacts")?.withRenderingMode(.alwaysOriginal))!;
        let image2Sel:UIImage = (UIImage.init(named: "tabbar_contactsHL")?.withRenderingMode(.alwaysOriginal))!;
        tabbarItem2.selectedImage = image2Sel;
        tabbarItem2.image = image2;
        
        let image3:UIImage = (UIImage.init(named: "tabbar_discover")?.withRenderingMode(.alwaysOriginal))!;
        let image3Sel:UIImage = (UIImage.init(named: "tabbar_discoverHL")?.withRenderingMode(.alwaysOriginal))!;
        tabbarItem3.selectedImage = image3Sel;
        tabbarItem3.image = image3;
        
        let image4:UIImage = (UIImage.init(named: "tabbar_me")?.withRenderingMode(.alwaysOriginal))!;
        let image4Sel:UIImage = (UIImage.init(named: "tabbar_meHL")?.withRenderingMode(.alwaysOriginal))!;
        tabbarItem4.selectedImage = image4Sel;
        tabbarItem4.image = image4;
        
        self.tabBar.backgroundColor = UIColor.white;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
