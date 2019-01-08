//
//  BViewController.swift
//  DoubanLogin
//
//  Created by 唐瑞鹏 on 2019/1/6.
//  Copyright © 2019年 rptang. All rights reserved.
//

import UIKit

public class BViewController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// 关联xib，当pod为组件，被宿主App引用时，资源被放入新bundle中，无法从mainBundle中读取
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        let currentBundle = Bundle(for: type(of: self))
        let path = currentBundle.path(forResource: "DoubanLoginRes", ofType: "bundle")
        if path != nil{
            super.init(nibName: "BViewController", bundle: Bundle.init(path: path!))
        }else{
            super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        }
    }
    /// 辅助init函数
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
