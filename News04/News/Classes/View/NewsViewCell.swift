//
//  NewsViewCell.swift
//  News
//
//  Created by 古今 on 2016/11/17.
//  Copyright © 2016年 夜风易冷. All rights reserved.
//

import UIKit
import Kingfisher

class NewsViewCell: UITableViewCell {
    
    // MARK: 控件属性
    @IBOutlet weak var iconImgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var otherLabel: UILabel!
    
    // MARK: 定义模型类型
    var newsModel : NewsModel? {
        didSet {
            //1.设置基本信息
            titleLabel.text = newsModel?.title
            subLabel.text = newsModel?.source
            otherLabel.text = "\(newsModel?.replyCount ?? 0)跟帖" //Optional("1234")跟帖
            
            //2.设置图片
            let iconURL = URL(string: newsModel?.imgsrc ?? "")
            iconImgView.kf.setImage(with: iconURL)
        }
    }

}
