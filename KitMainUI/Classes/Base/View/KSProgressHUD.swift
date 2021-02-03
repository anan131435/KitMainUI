//
//  KSProgressHUD.swift
//  Kit
//
//  Created by 韩志峰 on 2020/6/20.
//  Copyright © 2020 韩志峰. All rights reserved.
//

import UIKit
import SVProgressHUD
public class KSProgressHUD: NSObject {
   public class func showError(_ errorStr: String){
        SVProgressHUD.setMinimumDismissTimeInterval(0.5)
        SVProgressHUD.setFont(UIFont.systemFont(ofSize: 12))
        SVProgressHUD.showError(withStatus: errorStr)
    }
    public class func showInfor(_ errorStr: String){
        SVProgressHUD.setMinimumDismissTimeInterval(0.5)
           SVProgressHUD.setFont(UIFont.systemFont(ofSize: 12))
           SVProgressHUD.showInfo(withStatus: errorStr)
    }
    public class func showSuccessInfor(_ info: String){
        SVProgressHUD.setMinimumDismissTimeInterval(0.5)
           SVProgressHUD.setFont(UIFont.systemFont(ofSize: 12))
           SVProgressHUD.showSuccess(withStatus: info)
    }
}
