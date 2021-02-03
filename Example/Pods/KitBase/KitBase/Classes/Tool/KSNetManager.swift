//
//  KSNetManager.swift
//  Kit
//
//  Created by 韩志峰 on 2020/7/6.
//  Copyright © 2020 com.kuaishou.org. All rights reserved.
//


import Alamofire
public class KSNetManager: NSObject {
    public static let shareInstance =  KSNetManager()
    lazy var dateFormate: DateFormatter = {
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formater
    }()
    public func requestGetNoParama(url: String,headers: HTTPHeaders = ["Content-Type":"application/json"],success:((_ jsonDict:[String: Any]) -> Void)?,failure:((_ errorData: Error?) -> Void)?){
        AF.request(url,method: .get,headers: headers).responseJSON { (response) in
            switch response.result{
            case .success(let jsonData):
                print(url)
                print(jsonData)
                if let jsonDict = jsonData as? [String: Any]{
                    if success != nil {
                        success!(jsonDict)
                    }
                }
            case .failure(let error):
                print(url)
                print(error)
                if failure != nil{
                    failure!(error)
                }
            }
        }
    }
    
    public func requestPost(url: String,parama: [String: Any],headers: HTTPHeaders = ["Content-Type":"application/json"],success:((_ jsonDict:[String: Any]) -> Void)?,failure:((_ errorData: Error?) -> Void)?){
        print("接口参数\(parama)")
        print("接口header:\(headers)")
        AF.request(url,method: .post,parameters: parama,encoding: JSONEncoding.default,headers: headers).responseJSON { (response) in
            switch response.result{
            case .success(let jsonData):
                print(url)
                print(jsonData)
                if let jsonDict = jsonData as? [String: Any]{
                    if success != nil {
                        success!(jsonDict)
                    }
                }
            case .failure(let error):
                print(url)
                print(error)
                if failure != nil{
                    failure!(error)
                }
            }
        }
    }
   
        private func collectDataRequestPost(url: String,parama: [String: Any],headers: HTTPHeaders = ["Content-Type":"application/json"],success:((_ jsonDict:[String: Any]) -> Void)?,failure:((_ errorData: Error?) -> Void)?){
                 print("入参\(parama)")
                 print("请求头:\(headers)")
                 AF.request(url,method: .post,parameters: parama,encoding: JSONEncoding.default,headers: headers).responseJSON { (response) in
                     switch response.result{
                     case .success(let jsonData):
                         print(url)
                         print(jsonData)
                         if let jsonDict = jsonData as? [String: Any]{
                             if success != nil {
                                 success!(jsonDict)
                             }
                         }
                     case .failure(let error):
                         print(url)
                         print(error)
                         if failure != nil{
                             failure!(error)
                         }
                     }
                 }
             }
    public func addLog(parama:[String: Any]){
              let urlStr: String = mainDomain + logPath
              let currentVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
            var baseParase: [String: Any] = ["version":"\(currentVersion)","platForm":"iOS","message":"\(urlStr)","time":self.dateFormate.string(from: Date()),"path":"release"]
              for (key,value) in parama.reversed(){
                  baseParase[key] = value
              }
              self.collectDataRequestPost(url: urlStr, parama: baseParase, success: nil, failure: nil)
          }
    
}
