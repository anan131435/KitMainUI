//
//  KSWebViewController.swift
//  Kit
//
//  Created by 韩志峰 on 2020/6/20.
//  Copyright © 2020 韩志峰. All rights reserved.
//

import UIKit
import WebKit
import KitBase
import SnapKit

public class KSWebViewController: UIViewController {
    lazy var webView: WKWebView = {
       let webView = WKWebView()
        return webView
    }()
    lazy var navigationView: KSNavigationView = {
       let navigationView = KSNavigationView()
        return navigationView
    }()
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    func setNavigationTitle(title: String){
        navigationView.setupTitle(title: title)
    }
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(webView)
        view.addSubview(navigationView)
        
        navigationView.snp.makeConstraints { (make) in
            make.left.right.top.equalTo(0)
            make.height.equalTo(navigationBarHeight)
        }
        webView.snp.makeConstraints { (make) in
            make.top.equalTo(navigationBarHeight)
            make.left.right.bottom.equalTo(0)
        }
        
        navigationView.popBackBlock = {[weak self] in
            guard let self = self else {return}
            self.navigationController?.popViewController(animated: true)
            
        }
    }
    
   public func loadUrl(urlPath: String){
        webView.load(URLRequest.init(url: URL.init(fileURLWithPath: urlPath)))
        
    }
    

    

}
