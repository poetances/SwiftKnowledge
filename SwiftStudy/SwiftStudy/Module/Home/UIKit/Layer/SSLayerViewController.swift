//
//  SSLayerViewController.swift
//  SwiftStudy
//
//  Created by Zhu ChaoJun on 2020/7/1.
//  Copyright © 2020 Zhu ChaoJun. All rights reserved.
//

import UIKit

extension CALayer
   {
       func pauseAnimation() {
           if isPaused() == false {
               let pausedTime = convertTime(CACurrentMediaTime(), from: nil)
               speed = 0.0
               timeOffset = pausedTime
           }
       }

       func resumeAnimation() {
           if isPaused() {
               let pausedTime = timeOffset
               speed = 1.0
               timeOffset = 0.0
               beginTime = 0.0
               let timeSincePause = convertTime(CACurrentMediaTime(), from: nil) - pausedTime
               beginTime = timeSincePause
           }
       }

       func isPaused() -> Bool {
           return speed == 0
       }
   }

class SSLayerViewController: QMUICommonViewController {

    
    var v: SV!
    var v1: SV!
    var layer1: SVlayer!
    
    private lazy var tanslateAnimation: CABasicAnimation = {
        let animation = CABasicAnimation(keyPath: "position.y")
        animation.duration  = 3
        animation.fromValue = 0
        animation.toValue   = 200
//        animation.isRemovedOnCompletion = false
//        animation.repeatCount = Float(Int.max)
        return animation
    }()
    
    let count = 1
    override func initSubviews() {
    
        layer1 = SVlayer()
        layer1.backgroundColor = UIColor.pumpkin.cgColor
        layer1.frame = CGRect(x: 10, y: 200, width: 300, height: 200)
        view.layer.addSublayer(layer1)
        layer1.add(tanslateAnimation, forKey: nil)
        
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        if count % 2 == 0 {
            layer1.resumeAnimation()
        }else {
            layer1.pauseAnimation()
        }
        

    }
    
    func startAnimation() {
        let pauseTime = layer1.timeOffset
        
        layer1.speed = 1.0
        layer1.timeOffset = 0
        layer1.beginTime = 0
        
        let sinceTime = layer1.convertTime(CACurrentMediaTime(), from: nil) - pauseTime
        layer1.beginTime = sinceTime
    }
    
    func pauseAnimation() {
        let pauseTime = layer1.convertTime(CACurrentMediaTime(), from: nil)
        
        layer1.speed = 0
        layer1.timeOffset = pauseTime
    }
    
    
    func changeAnimation() {
        
        CATransaction.begin()
        CATransaction.setAnimationDuration(3)
       // self.layer1.backgroundColor = UIColor.qmui_random().cgColor
        self.v.frame = CGRect(x: 200, y: 200, width: 200, height: 50)
        CATransaction.commit()
        
    }
    
    
    func setupLayer() {
        v = SV()
        v.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        v.backgroundColor = UIColor.black
        view.addSubview(v)
        
     
        
        layer1 = SVlayer()
        layer1.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        //layer1.frame.origin = CGPoint(x: 10, y: 100)
        layer1.backgroundColor = UIColor.qmui_random().cgColor
        layer1.contents = UIImage(named: "icon_moreOperation_shareFriend")?.cgImage
        layer1.contentsScale = UIScreen.main.scale
        layer1.contentsGravity = .center
        //layer1.contentsRect  = CGRect(x: 0, y: 0, width: 0.5, height: 0.5)
        //layer1.contentsCenter = CGRect(x: 0, y: 0, width: 0.5, height: 0.5)
        //layer1.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        //layer1.position    = CGPoint(x: 10, y: 400)
        layer1.anchorPoint = CGPoint(x: 1, y: 1)
        view.layer.addSublayer(layer1)
        
        let searchBar = UISearchBar()
        searchBar.placeholder = "搜索"
        searchBar.searchBarStyle = .prominent
        searchBar.showsScopeBar = true
        searchBar.prompt = "Prompt"
        searchBar.barStyle = .default
        searchBar.showsCancelButton = true
                view.addSubview(searchBar)
        searchBar.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalTo(400)
            make.height.equalTo(100)
        }
        
    }
}


class SVlayer: CALayer {
    
    override func action(forKey event: String) -> CAAction? {
        
        let action = super.action(forKey: event)
        print("layer action for key", action )
//        if event == "backgroundColor" {
//            let newA = CABasicAnimation(keyPath: event)
//            newA.duration = 5
//            return newA
//        }
        return action
//        return NSNull()
//        return nil
    }
}


class SV: UIView {
    
    
    override class var layerClass: AnyClass {
        return  SVlayer.self
    }
    
    
    override func action(for layer: CALayer, forKey event: String) -> CAAction? {
       let action = super.action(for: layer, forKey: event)
        print("UIView action for key", action )
        return action
        //return NSNull()
        //return nil
    }
    
    override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)
        print("willMove to Window")
    }
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        print("willMove to superView")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print("layoutSubviews")

    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        print("draw rect")

    }
}
