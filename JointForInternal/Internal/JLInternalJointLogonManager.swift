//
//  JLInternalJointLogonManager.swift
//  MJSports
//
//  Created by 彩球 on 2018/4/25.
//  Copyright © 2018年 caiqr. All rights reserved.
//

import UIKit
import JointThirdSocial


public class JLInternalJointLogonManager: JLJointLoginStandard {
    
    public static func defaultManager() -> JLJointLoginStandard {
        return JLInternalJointLogonManager()
    }
    
    public func getJointLogonInfo(type: JLJointLogonType, viewControl: UIViewController, completionHandler: jointLogonCompletionHandler?) {
        var uMengType: UMSocialPlatformType = .wechatSession
        if type == .WX {
            uMengType = .wechatSession
        } else if type == .QQ {
            uMengType = .QQ
        } else if type == .Sina {
            uMengType = .sina
        } else {
            return
        }
        
        UMSocialManager.default().getUserInfo(with: uMengType, currentViewController: viewControl) { (result, error) in
            if error == nil {
                if let resp: UMSocialUserInfoResponse = result as? UMSocialUserInfoResponse {
                    let userInfo = JLJointLogonResponse()
                    userInfo.iconurl = resp.iconurl
                    userInfo.uid = resp.uid
                    userInfo.name = resp.name
                    userInfo.gender = resp.gender
                    userInfo.unionId = resp.unionId
                    completionHandler?(userInfo, type, nil)
                }
            } else {
                completionHandler?(nil, type, error as NSError?)
            }
        }
    }
    
    public func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        return UMSocialManager.default().handleOpen(url, sourceApplication: sourceApplication, annotation: annotation)
    }
    
    public func application(_ application: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any]) -> Bool {
        return UMSocialManager.default().handleOpen(url, options: options)
    }
    
    public func application(_ application: UIApplication, handleOpen url: URL) -> Bool {
        return UMSocialManager.default().handleOpen(url)
    }
    
    
    
    
    
}
