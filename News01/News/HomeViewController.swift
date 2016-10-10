//
//  HomeViewController.swift
//  News
//
//  Created by 古今 on 16/10/10.
//  Copyright © 2016年 夜风易冷. All rights reserved.
//

import UIKit
// MARK: - 类的声明
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1.设置导航栏
        setupNavigationBar()
    }
    
    /*
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
     */
    
}

//类扩展
//MARK: - 设置UI界面
extension HomeViewController {
    fileprivate func setupNavigationBar()  {
        //1.设置背景图片
        navigationController?.navigationBar.setBackgroundImage(UIImage(named: "reader_navigation_background"), for: .default)
        
        //2.设置标题
        navigationItem.titleView = UIImageView(image: UIImage(named: "navigation_logo"))
        
        //3.设置右侧的搜索按钮
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "navigation_search"), style: .plain, target: self, action: #selector(searchItemClick))
    }
}

//MARK: - 事件监听的函数
extension HomeViewController {
    //@objc ---> 为了保留OC的特性
    @objc fileprivate func searchItemClick()  {
        print("------")
    }
}
