//
//  ViewController.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/09.
//  Copyright © 2020 JHM. All rights reserved.
//

import UIKit

protocol Root {
    
}

class RootViewController: UIViewController, Root {

    private var viewModel = RootViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        viewModel.pushView(scene: .main)
    }
}
