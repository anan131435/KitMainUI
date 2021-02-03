//
//  KSNavigationController.swift
//  Kit
//
//  Created by 韩志峰 on 2020/6/12.
//  Copyright © 2020 韩志峰. All rights reserved.
//

import UIKit

public class KSNavigationController: UINavigationController {

    public override func viewDidLoad() {
        super.viewDidLoad()

    }


    // push 隐藏标签栏
    public override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 { viewController.hidesBottomBarWhenPushed = true }
        super.pushViewController(viewController, animated: animated)
    }
    

    

    
}
