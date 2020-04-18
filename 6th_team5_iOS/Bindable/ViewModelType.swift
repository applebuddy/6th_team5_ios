//
//  ViewModelType.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/09.
//  Copyright © 2020 JHM. All rights reserved.
//

import Foundation

protocol ViewModelType { // 주입 대상은 Type으로 명명합니다.
    func pushView(state: ViewPushState)
}


