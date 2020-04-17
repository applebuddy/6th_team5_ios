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
    private var viewModel = RootViewModel()
    static var sceneManagerDelegate: SceneManagerDelegateType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        RootViewController.self.sceneManagerDelegate = SceneManager.init(rootviewController: self)
        RootViewController.self.sceneManagerDelegate?.pushViewBindable(state: .main)
    }
}
