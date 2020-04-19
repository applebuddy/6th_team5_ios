//
//  MainViewController.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/09.
//  Copyright © 2020 JHM. All rights reserved.
//

import UIKit
import SnapKit

protocol MainViewScene: Scene {
    
}

class MainViewController: UIViewController, MainViewScene {
    var viewModel: ViewModelType!
    private var label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad() // viewDidLoad 보다 layout이 먼저돈다??
    }
    
    func setViewModel() {
        let gestureReconigzer = UITapGestureRecognizer(target: self, action: #selector(viewChange(_:)))
        self.label.addGestureRecognizer(gestureReconigzer)
    }
    
    func layout() {
        self.view.backgroundColor = .red
        self.label.text = "TTTT"
        self.label.backgroundColor = .white
        self.view.addSubview(self.label)
        self.label.isUserInteractionEnabled = true
        
        self.label.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.center.equalTo(self.view)
        }
    }
    
    @objc func viewChange(_ sender: Any) {
        self.viewModel.pushView(scene: .search)
    }
}
