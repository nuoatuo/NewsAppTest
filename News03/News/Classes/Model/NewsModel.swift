//
//  NewsModel.swift
//  News
//
//  Created by 古今 on 2016/10/14.
//  Copyright © 2016年 夜风易冷. All rights reserved.
//

import UIKit

class NewsModel: NSObject {

    // MARK: - 定义属性
    var replyCount : Int = 0
    var  title : String = ""
    var  source : String = ""
    var  imgsrc : String = ""
    
    // MARK: - 定义字典转模型的构造函数
    init(dict : [String : Any]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
    }
}
