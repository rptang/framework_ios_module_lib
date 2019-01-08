//
//  AViewController.swift
//  DoubanLoginTest
//
//  Created by 唐瑞鹏 on 2019/1/7.
//  Copyright © 2019年 rptang. All rights reserved.
//

import UIKit
import CTMediator
import DoubanLogin

class AViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func jump(_ sender: Any) {
        
        let controller = CTMediator.sharedInstance()?.LoginModule_showSwift{ (result) in
            print(result)
        }
        
        self.present(controller!, animated: false, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
