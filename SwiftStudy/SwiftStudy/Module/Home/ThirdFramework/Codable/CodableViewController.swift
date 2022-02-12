//
//  CodableViewController.swift
//  SwiftStudy
//
//  Created by ZhuChaoJun on 2022/1/12.
//  Copyright © 2022 Zhu ChaoJun. All rights reserved.
//

import UIKit
import HandyJSON

class CodableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func enCodeableClick(_ sender: UIButton) {
        let json = """
            {
                "firstName": "米饭童鞋",
                "points": "200",
                "description": "A handsome boy."
                
            }
        """
        
        
//        let cPerson = try? JSONDecoder().decode(CPerson.self, from: json.data(using: .utf8)!)
        
        let cPerson = CPerson.deserialize(from: json, designatedPath: nil)
        print(cPerson)
        
    }
    
    @IBAction func deCodeableClick(_ sender: UIButton) {
        
    }
    
}

struct CStudent: Codable {
    var name: String?
    
    
}

struct CPerson: HandyJSON {
    
    var firstName1: String?
    var points: Int?
    var description: String?
//    var per: CStudent?
    
//    enum CodingKeys: String, CodingKey {
//        case firstName1 = "firstName"
//
//    }
}
