//
//  MainViewController.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/09.
//  Copyright © 2020 JHM. All rights reserved.
//

import UIKit
import SnapKit

protocol MainViewBindable: ViewBindable {
    
}

class MainViewController: UIViewController, MainViewBindable {
    var viewModel: ViewModelType!

    override func viewDidLoad() {
        super.viewDidLoad() // viewDidLoad 보다 layout이 먼저돈다??
    }
    
    func setRx() {
        print("hi")
    }
    
    func layout() {
        self.view.backgroundColor = .red
        let label = UILabel()
        label.text = "TTTT"
        label.backgroundColor = .white
        self.view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.center.equalTo(self.view)
        }
    }
}
