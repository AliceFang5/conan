//
//  SharpImageView.swift
//  conan
//
//  Created by 方芸萱 on 2020/7/28.
//

import UIKit

class SharpImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func layoutSubviews() {
        super.layoutSubviews()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bounds.width/2, y: bounds.height/7))
        path.addCurve(to: CGPoint(x: bounds.width/2, y: bounds.height/2), controlPoint1: CGPoint(x: bounds.width, y: 0), controlPoint2: CGPoint(x: bounds.width, y: bounds.height/4))
        path.addCurve(to: CGPoint(x: bounds.width/2, y: bounds.height/7), controlPoint1: CGPoint(x: 0, y: bounds.height/4), controlPoint2: CGPoint(x: 0, y: 0))
        path.close()
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        layer.mask = shapeLayer
        
    }

}
