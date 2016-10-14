//
//  NetworkTools.swift
//  News
//
//  Created by 古今 on 2016/10/14.
//  Copyright © 2016年 夜风易冷. All rights reserved.
//

import UIKit
import Alamofire

enum MethodType {
    case get
    case post
}

class NetworkTools {
    class func requestData(URLString : String, type : MethodType,  parameters : [String : Any]? = nil,  finishedCallback: @escaping (_ restult : Any) -> ()) {
    
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
    
        Alamofire.request(URLString, method: method, parameters: parameters).responseJSON { (response) in
            
            //1.校验是否有结果
            guard let result = response.result.value else {
                print(response.result.error)
                return
            }
            
            //2.将结果回调出去
            finishedCallback(result)
        }
    }
}
