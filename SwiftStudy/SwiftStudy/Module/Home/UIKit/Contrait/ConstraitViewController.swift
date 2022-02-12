//
//  ConstraitViewController.swift
//  SwiftStudy
//
//  Created by ZhuChaoJun on 2021/8/13.
//  Copyright © 2021 Zhu ChaoJun. All rights reserved.
//

import UIKit

class ConstraitViewController: QMUICommonViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let snapKitV = UILabel()
        snapKitV.backgroundColor = UIColor.lightGray
        snapKitV.text = "snapKit"
        view.addSubview(snapKitV)
                
        snapKitV.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)
            make.top.equalTo(200)
        }
        
        let constraitLayout = UILabel()
        constraitLayout.backgroundColor = UIColor.purple
        constraitLayout.text = "constraitLayout"
        constraitLayout.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(constraitLayout)
        
        // 设置NSLayoutConstraint
        // 当然我们也可以使用。 NSLayoutConstraint.constraintsWithVisualFormat通过格式化设置VFL语言。
        // NSLayoutConstraint 有.constait属性，其实和SnapKit有点相似。
        // translatesAutoresizingMaskIntoConstraints需要设置为false
        // 如果添加到自己身上，注意怎么使用
        // 同时引入了UILayoutGuide，其作用就是辅助约束的
        
        let top = NSLayoutConstraint(item: constraitLayout,
                                             attribute: .top,
                                             relatedBy: .equal,
                                             toItem: snapKitV,
                                             attribute: .bottom,
                                             multiplier: 1,
                                             constant: 20)
        let centx = NSLayoutConstraint(item: constraitLayout, attribute: .centerX,
                                       relatedBy: .equal,
                                       toItem: snapKitV,
                                       attribute: .centerX,
                                       multiplier: 1.0,
                                       constant: 0)
        NSLayoutConstraint(item: constraitLayout, attribute: .width, relatedBy: .equal, toItem: snapKitV, attribute: .width, multiplier: 1.0, constant: 0).isActive = false
        
        let w2 = NSLayoutConstraint(item: constraitLayout, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200)
        let h = NSLayoutConstraint(item: constraitLayout, attribute: .height, relatedBy: .equal, toItem: snapKitV, attribute: .height, multiplier: 1.0, constant: 0)
        let h2 = NSLayoutConstraint(item: constraitLayout, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200)
        
  
        // iOS 8之后，直接使用该方法来添加约束。
        NSLayoutConstraint.activate([top, centx, w2, h2])
        //
        
        // 使用改方法添加约束的规则>>>
        // 1、 同级view，constrains要添加到其父view。 eg.view.addConstraints([top, centx, w, h])
        // 2、 不同级view，constrains需要添加到他们共同的最近父view。
        // 3、 同层次view，需要添加到将高层次的view上。
        // view.addConstraints([top, centx, w, h])
        
        
        // NSLayoutAnchor 9.0之后，可以理解为对NSConstraitLayout的补充。
        // 通过 isActive
        let layoutAnchorV = UILabel()
        layoutAnchorV.textAlignment = .center
        layoutAnchorV.text = "NSLayoutAnchor"
        layoutAnchorV.backgroundColor = UIColor.systemPink
        layoutAnchorV.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(layoutAnchorV)
        
        // 这种写法也是可以的
        layoutAnchorV.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        layoutAnchorV.topAnchor.constraint(equalTo: constraitLayout.bottomAnchor, constant: 20).isActive = true
        layoutAnchorV.widthAnchor.constraint(equalToConstant: 100).isActive = true
        layoutAnchorV.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // let a = NSLayoutDimension
        
//        let cx = layoutAnchorV.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
//        let ctop = layoutAnchorV.topAnchor.constraint(equalTo: constraitLayout.bottomAnchor, constant: 20)
//        let cw = layoutAnchorV.widthAnchor.constraint(equalToConstant: 100)
//        let ch = layoutAnchorV.heightAnchor.constraint(equalToConstant: 100)
//        NSLayoutConstraint.activate([cx, ctop, cw, ch])
        
        
        // 相应的布局的子类NSLayoutXAxisAnchor、NSLayoutYAxisAnchor NSLayoutDimension
        
        // 一个抽象的占位布局。
        let v = UILayoutGuide()
        view.addLayoutGuide(v)
        v.snp.makeConstraints { make in
            
        }
        
        // UILayoutSupport 和上面的差距就大了，是一个协议。 但是iOS 11之后就遗弃了，使用safeAreaLayoutGuide
        // self.topLayoutGuide
        // self.bottomLayoutGuide
        
        
        let v1 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        v1.translatesAutoresizingMaskIntoConstraints = false
        v1.backgroundColor = UIColor.pumpkin
        view.addSubview(v1)
        
        v1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 200).isActive = true
        v1.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        v1.widthAnchor.constraint(equalToConstant: 50).isActive = true
        v1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    
    


}
