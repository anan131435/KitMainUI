//
//  UIViewControllerExtension.swift
//  Kit
//
//  Created by 韩志峰 on 2020/6/13.
//  Copyright © 2020 韩志峰. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    
}

extension UIView{
    public func configRectCorner(view: UIView, corner: UIRectCorner, radii: CGSize) -> CALayer {
        let maskPath = UIBezierPath.init(roundedRect: view.bounds, byRoundingCorners: corner, cornerRadii: radii)
        let maskLayer = CAShapeLayer.init()
        maskLayer.frame = view.bounds
        maskLayer.path = maskPath.cgPath
        return maskLayer
    }
}
