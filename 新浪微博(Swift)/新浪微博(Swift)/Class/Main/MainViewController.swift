//
//  MainViewController.swift
//  新浪微博(Swift)
//
//  Created by isoftstone on 16/4/30.
//  Copyright © 2016年 com.hao. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
//        let home = HomeViewController()
//        let nav = UINavigationController(rootViewController: home)
//        home.title = "首页"
//        addChildViewController(nav)
//        
//        let discover = UIViewController()
//        discover.title = "发现"
//        let nav1 = UINavigationController(rootViewController: discover)
//        
//        addChildViewController(nav1)
        
        addChildViewController(HomeViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(MessageViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(DiscoverViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(ProfileViewController(), title: "我的", imageName: "tabbar_profile")
        
    }
    
    
    private func addChildViewController(childController: UIViewController,title: String,imageName: String ) {
        
        //设置tabBar背景图片
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        
        tabBar.tintColor = UIColor.orangeColor()
        let nav = UINavigationController(rootViewController: childController)
        childController.title = title
        addChildViewController(nav)

        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
