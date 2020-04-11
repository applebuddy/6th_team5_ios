//
//  ViewController.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/09.
//  Copyright © 2020 JHM. All rights reserved.
//

import UIKit
import RxSwift

protocol RootViewBindable: ViewBindable {
    
}

class RootViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    var viewModel = RootViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        viewModel.viewState.subscribe (onNext:{ [weak self] state in
            self?.pushViewBindable(state: state)
        }).disposed(by: disposeBag)
        
    }
}
