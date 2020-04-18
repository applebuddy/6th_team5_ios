//
//  MainViewModel.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/09.
//  Copyright © 2020 JHM. All rights reserved.
//

import Foundation

struct MainViewModel: ViewModelType {
    var sceneManager = SceneManager()
    
    func pushView(state: ViewPushState) {
        self.sceneManager.pushViewBindable(state: state)
    }
}
