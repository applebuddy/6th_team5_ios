//
//  ViewType.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/10.
//  Copyright © 2020 JHM. All rights reserved.
//

import Foundation

enum ViewPushState: String {
    case main
    case search
    
    func makeViewBindable () -> ViewBindable {
        switch self {
        case .main:
            var mainView = MainViewController()
            mainView.setUp(viewModel: MainViewModel())
            return mainView
        case .search:
            var searchView = SearchViewController()
            searchView.setUp(viewModel: MainViewModel())
            return searchView
        }
    }
}
