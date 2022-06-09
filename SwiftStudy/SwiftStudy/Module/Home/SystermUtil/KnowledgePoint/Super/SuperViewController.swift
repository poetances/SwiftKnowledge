//
//  SuperViewController.swift
//  SwiftStudy
//
//  Created by ZhuChaoJun on 2022/3/17.
//  Copyright © 2022 Zhu ChaoJun. All rights reserved.
//

import UIKit

class SuperPerson {

    var age = 20

    func test() {
        print("person test")
    }
}

class Student: SuperPerson {
    var name = "student"
    override func test() {
        print("student test")
    }
}

class SuperViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white

    }

}
