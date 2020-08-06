//
//  FirstViewController.swift
//  conan
//
//  Created by 方芸萱 on 2020/8/5.
//

import UIKit

class FirstViewController: UIViewController {

    func addSticker (moveX: CGFloat, moveY: CGFloat, scale: CGFloat, rotate: CGFloat){
        // picture CGAffineTransform
        let oneDegree = CGFloat.pi/180
        let imageView = UIImageView(image: UIImage(named: "灰原"))
        imageView.frame = CGRect(x: 0, y: 280, width: 100, height: 100)
        imageView.transform = CGAffineTransform.identity.translatedBy(x: moveX, y: moveY).scaledBy(x: scale, y: scale).rotated(by: oneDegree * rotate)
        view.addSubview(imageView)
   }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // heart UIBezierPath and animation
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 210, y: 530))
        path.addCurve(to: CGPoint(x: 210, y: 580), controlPoint1: CGPoint(x: 250, y: 510), controlPoint2: CGPoint(x: 250, y: 530))
        path.addCurve(to: CGPoint(x: 210, y: 530), controlPoint1: CGPoint(x: 170, y: 530), controlPoint2: CGPoint(x: 170, y: 510))
        path.close()
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.lineWidth = 5
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = nil
        view.layer.addSublayer(shapeLayer)
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 1.5
        animation.repeatCount = .greatestFiniteMagnitude
        animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        shapeLayer.add(animation, forKey: nil)
        
        // add picture CGAffineTransform
        addSticker(moveX: 0, moveY: 80, scale: 0.5, rotate: -110)
        addSticker(moveX: 65, moveY: 70, scale: 0.6, rotate: -85)
        addSticker(moveX: 150, moveY: 60, scale: 0.8, rotate: -50)
        addSticker(moveX: 270, moveY: 50, scale: 1.2, rotate: 0)
//        imageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
//        imageView.transform = CGAffineTransform.identity.scaledBy(x: 0.8, y: 0.8)
//        imageView.transform = CGAffineTransform(translationX: 20, y: 50)
//        imageView.transform = CGAffineTransform.identity.translatedBy(x: 20, y: 50)
   }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
