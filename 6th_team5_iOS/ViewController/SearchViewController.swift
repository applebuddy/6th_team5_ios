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
    
    func setRx() {
        return
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
