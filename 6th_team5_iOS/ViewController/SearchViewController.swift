//
//  SearchViewController.swift
//  6th_team5_iOS
//
//  Created by 정하민 on 2020/04/18.
//  Copyright © 2020 JHM. All rights reserved.
//

import UIKit
import SnapKit

protocol SearchViewBindable: ViewBindable {
    
}


class SearchViewController: UIViewController, SearchViewBindable {
    var viewModel: ViewModelType!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setEvent() {
        return
    }
    
    func layout() {
        self.view.backgroundColor = .red
        let label = UILabel()
        label.text = "GGGGG"
        label.backgroundColor = .white
        self.view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.center.equalTo(self.view)
        }
    }

}
