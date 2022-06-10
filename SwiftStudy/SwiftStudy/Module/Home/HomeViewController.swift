//
//  ViewController.swift
//  SwiftStudy
//
//  Created by Zhu ChaoJun on 2019/12/19.
//  Copyright © 2019 Zhu C/Users/zhuchaojun/Desktop/SwiftStudy/PodfilehaoJun. All rights reserved.
//

import UIKit
import Alamofire
import SnapKit

struct Pcj {

    var name = 0
}

class HomeViewController: UIViewController, EmptyViewAble {
    
    var pcj = Pcj()
    
    var datas: Array<String>!
    
    let kCellId = "kCellId"
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "宝藏"
        
        datas = ["SystermUtil","UIKit","ThirdFramwrok", ""]
        
        let tab = UITableView(frame: .zero, style: .plain)
        tab.delegate = self
        tab.dataSource = self
        tab.tableFooterView = UIView()
        view.addSubview(tab)
        tab.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        tab.register(UITableViewCell.self, forCellReuseIdentifier: kCellId)
    
    }

}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kCellId, for: indexPath)
        cell.textLabel?.text = datas[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            navigationController?.pushViewController(SSSystermUtilVC(), animated: true)
        }else if indexPath.row == 1 {
            navigationController?.pushViewController(SSSystermUIVC(), animated: true)
        }else if indexPath.row == 2 {
            navigationController?.pushViewController(SSThirdFrameworkVC(), animated: true)
        }else {

            // showEmptyView()
            print(Mems.ptr(ofVal: &pcj))
            pcj.name = 12
            print(Mems.ptr(ofVal: &pcj))

        }
    }

}





