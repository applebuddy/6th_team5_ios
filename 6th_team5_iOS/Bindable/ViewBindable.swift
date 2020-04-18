//
//  ViewBindable.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/09.
//  Copyright © 2020 JHM. All rights reserved.
//

import Foundation
import UIKit

protocol ViewBindable { // 동작을 요구하는 대상은 -able로 명명합니다.
    
    var viewModel: ViewModelType! { get  set }
    
    func layout()
    func setEvent()
}

extension ViewBindable where Self: UIViewController {
    mutating func setUp(viewModel: ViewModelType) {
        self.viewModel = viewModel
        layout()
        setEvent()
    }
}
