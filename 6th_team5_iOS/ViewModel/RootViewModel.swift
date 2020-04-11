//
//  RootViewModel.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/09.
//  Copyright © 2020 JHM. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

struct RootViewModel: ViewModelType {
    let viewState = BehaviorRelay<ViewPushState>(value: .main)
    
    init() {
        
    }
}
