//
//  Target_DoubanLogin.swift
//  DoubanLogin
//
//  Created by 唐瑞鹏 on 2019/1/8.
//  Copyright © 2019年 rptang. All rights reserved.
//

import UIKit

@objc class Target_DoubanLogin: NSObject {
    
    @objc func Action_Extension_ViewController(_ params:NSDictionary) -> UIViewController {
        if let callback = params["callback"] as? (String) -> Void {
            callback("success")
        }
        
        let aViewController = BViewController()
        return aViewController
    }
}
