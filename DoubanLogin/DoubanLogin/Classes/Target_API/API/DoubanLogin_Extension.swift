//
//  DoubanLogin_Extension.swift
//  DoubanLogin
//
//  Created by 唐瑞鹏 on 2019/1/8.
//  Copyright © 2019年 rptang. All rights reserved.
//

import CTMediator

public extension CTMediator {
    
    @objc public func LoginModule_showSwift(callback:@escaping (String) -> Void) -> UIViewController? {
        let params = [
            "callback":callback,
            kCTMediatorParamsKeySwiftTargetModuleName:"DoubanLogin"
            ] as [AnyHashable : Any]
        if let viewController = self.performTarget("DoubanLogin", action: "Extension_ViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}
