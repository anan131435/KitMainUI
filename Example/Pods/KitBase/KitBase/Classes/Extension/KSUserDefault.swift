//
//  KSUserDefault.swift
//  Kit
//
//  Created by 韩志峰 on 2020/6/24.
//  Copyright © 2020 韩志峰. All rights reserved.
//

import Foundation
public class KSUserDefault{
    public static let standard: KSUserDefault = KSUserDefault()
    public func setValue(_ value:Bool,forKey: String){
        UserDefaults.standard.set(value, forKey: forKey)
        UserDefaults.standard.synchronize()
    }
    public func setAnyValue(_ value:Any,forKey: String){
        UserDefaults.standard.set(value, forKey: forKey)
        UserDefaults.standard.synchronize()
    }
}
