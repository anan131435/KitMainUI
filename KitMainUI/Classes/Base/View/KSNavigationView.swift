//
//  KSNavigationView.swift
//  Kit
//
//  Created by 韩志峰 on 2020/6/22.
//  Copyright © 2020 韩志峰. All rights reserved.
//

import UIKit
import KitBase
class KSNavigationView: KSBaseView {
    var popBackBlock: KSNoParamaCallBack?
    let offsetY: CGFloat = isiPhoneX() ? 20 : 10
    lazy var backBtn: UIButton = {
       let backBtn = UIButton()
        backBtn.setImage(UIImage.init(named: "back"), for: .normal)
        backBtn.setImage(UIImage.init(named: "back"), for: .highlighted)
        backBtn.addTarget(self, action: #selector(leftBarButtonItemClick), for: .touchUpInside)
        return backBtn
    }()
    lazy var noteView: UILabel = {
        let mainView = UILabel()
        mainView.text = ""
        mainView.font = UIFont.systemFont(ofSize: 16)
        mainView.textAlignment = .center
        return mainView
    }()
    override func addChildViews() {
        super.addChildViews()
        addSubview(backBtn)
        addSubview(noteView)
    }
    
    override func setupConstrains() {
        super.setupConstrains()
        backBtn.snp.makeConstraints { (make) in
            make.left.equalTo(20)
            make.centerY.equalTo(self).offset(offsetY)
            make.width.height.equalTo(22)
        }
        noteView.snp.makeConstraints { (make) in
            make.centerY.equalTo(backBtn.snp.centerY)
            make.centerX.equalTo(self)
        }
    }
    @objc func leftBarButtonItemClick(){
        if self.popBackBlock != nil {
            self.popBackBlock!()
        }
    }
    func setupTitle(title: String){
        self.noteView.text = title
    }
}
