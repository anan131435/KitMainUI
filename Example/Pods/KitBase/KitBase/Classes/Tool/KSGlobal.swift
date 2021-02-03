//
//  KSGlobal.swift
//  Kit
//
//  Created by 韩志峰 on 2020/6/18.
//  Copyright © 2020 韩志峰. All rights reserved.
//

import Foundation
import UIKit

public func isiPhoneX() ->Bool {
    let screenHeight = UIScreen.main.nativeBounds.size.height;
    if screenHeight == 2436 || screenHeight == 1792 || screenHeight == 2688 || screenHeight == 1624 {
        return true
    }
    return false
}

// navigationBarHeight
public let navigationBarHeight : CGFloat = isiPhoneX() ? 88 : 64
public let kSScreenHeight: CGFloat = UIScreen.main.nativeBounds.size.height
public let ksScreenWidth: CGFloat = UIScreen.main.bounds.size.width
// tabBarHeight
public let tabBarHeight : CGFloat = isiPhoneX() ? 49 + 34 : 49
public let loginState: String = "loginState"
public let mainColor: UIColor = UIColor.hexColor("016efb", alpha: 1.0)
public typealias KSNoParamaCallBack = () -> Void
public typealias KShasParamaCallBack = (_ value: Any) -> Void
public let userProtocolIdentifier: String = "userProtocolIdentifier"
public let mainDomain: String = "https://kit-api.corp.kuaishou.com/"
//let mainDomain: String = "http://kits.test.it.eff/"
public let codeUrl: String = "login_phone"
public let authUrl: String = "auth_code"
public let personalModelUrl: String = "personalModel.archive"
public let vpnStatusStr: String = "vpnStatus"
public let connectionStatus : String = "connection.status"
public let applicationTerminate: String = "applicationTerminate"
public let privacyProtocol: String = "KitPrivacy"
public let userProtocol: String = "KitUserProto"
public let fileType: String = ".docx"
public let showWarn: String = "warning"
public let vpnConfigUrl: String = "v1/user/auth_token"
public let checkVersion: String = "dev/console"
public let updateVersion: String = "dev/update"
public let heartLoginPath: String = "/login"
public let heartBeatPath: String = "/heartbeat"
public let heartLogoutPath: String = "/logout"
public let logPath: String = "logger_def"
public let kBgTaskName: String = "com.ios.kit"
public let kBuglyId: String = "2371998e42"
public let kCheckVersionDateStr : String = "kCheckVersionDate"
public let kLogoutnotification: String = "kLogoutnotification"
public let kISCheckedOver: String = "kISCheckedOver"
public let kTokenCheck: String = "v1/user/token_expire"
public let kNotificationVpnStarted: String = "kNotificationVpnStarted"
public let appKey: String = "3e23364c-a11f-410b-b98d-578a5bd95a7c"
public let wbindex: String = "ZHmwmHWkO"
public let appFingerID: String = "appFingerID"
public let addFingerUrl: String = "v1/user/fingerprinting/auth_user"
public let verifyFingerUrl: String = "v1/user/fingerprinting/auth_device"
public let kAppExtensionName: String = "group.com.kuaishouios.kit"
public let kVpnLevel: String = "kVpnLevel"
