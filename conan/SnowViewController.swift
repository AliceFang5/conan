//
//  SnowViewController.swift
//  conan
//
//  Created by 方芸萱 on 2020/8/5.
//

import UIKit
import SpriteKit

class SnowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let imageView = UIImageView(image: UIImage(named: "小蘭新一"))
        imageView.frame = view.frame
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)

        let skView = SKView(frame: view.frame)
        view.insertSubview(skView, at: 0)
        let scene = SKScene(size: skView.frame.size)
        scene.anchorPoint = CGPoint(x: 0.5, y: 1)
        let emitterNode = SKEmitterNode(fileNamed: "MySnowParticle")
        scene.addChild(emitterNode!)
        skView.presentScene(scene)

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
