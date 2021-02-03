//
//  KSBaseView.swift
//  Kit
//
//  Created by 韩志峰 on 2020/6/19.
//  Copyright © 2020 韩志峰. All rights reserved.
//

import UIKit
 
public class KSBaseView: UIView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        addChildViews()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func addChildViews(){
        
    }
    public func setupConstrains(){
        
    }

}
