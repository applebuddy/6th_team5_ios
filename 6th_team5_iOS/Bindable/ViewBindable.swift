//
//  ViewBindable.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/09.
//  Copyright © 2020 JHM. All rights reserved.
//

import Foundation
import UIKit


/// ViewController에 상태[ViewModel, Layout]를 설정한 것을 Scene이라고 합니다.
protocol Scene {
    
    var viewModel: ViewModelType! { get  set }
    
    /// ViewController의 layout을 지정합니다.
    func layout()
    /// ViewController에 viewModel을 주입합니다.
    func setViewModel()
}

extension Scene where Self: UIViewController {
    mutating func setUp(viewModel: ViewModelType) {
        self.viewModel = viewModel
        layout()
        setViewModel()
    }
}
