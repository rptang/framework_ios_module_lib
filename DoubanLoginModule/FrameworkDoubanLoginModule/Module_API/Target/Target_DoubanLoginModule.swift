//
//  Target_DoubanLoginModule.swift
//  DoubanLoginModule
//
//  Created by 唐瑞鹏 on 2019/1/4.
//  Copyright © 2019年 rptang. All rights reserved.
//

import UIKit

@objc class Target_DoubanLoginModule: NSObject {
    
    @objc func Action_Extension_ViewController(_ params:NSDictionary) -> UIViewController {
        if let callback = params["callback"] as? (String) -> Void {
            callback("success")
        }
        
        let aViewController = DoubanLoginViewController()
        return aViewController
    }
    
    @objc func Action_Category_ViewController(_ params:NSDictionary) -> UIViewController {
        
        if let block = params["callback"] {
            
            typealias CallbackType = @convention(block) (NSString) -> Void
            let blockPtr = UnsafeRawPointer(Unmanaged<AnyObject>.passUnretained(block as AnyObject).toOpaque())
            let callback = unsafeBitCast(blockPtr, to: CallbackType.self)
            
            callback("success")
        }
        
        let aViewController = DoubanLoginViewController()
        return aViewController
    }
}
