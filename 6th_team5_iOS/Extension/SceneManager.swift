//
//  extension.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/10.
//  Copyright © 2020 JHM. All rights reserved.
//

import Foundation
import UIKit

protocol SceneManagerDelegateType: class {
    func pushViewBindable(state: ViewPushState)
    func modalViewBindable(state: ViewPushState)
    func popViewController()
}

class SceneManager: SceneManagerDelegateType {
    
    private let naviVC: UINavigationController?
    private let rootVC: UIViewController
    private var currentVC : UIViewController
    private var viewState: ViewState // view의 상태를 나타냄 : push modal 등 현재 상태
    
    enum ViewState: String {
        case push
        case modal
        case none
    }
    
    init(rootviewController: RootViewController) {
        self.naviVC = rootviewController.navigationController ?? nil
        self.rootVC = rootviewController
        self.currentVC = rootviewController
        self.viewState = .none
    }
    
    func pushViewBindable(state: ViewPushState) {
        let viewController = (state.makeViewBindable() as? UIViewController) ?? rootVC
        self.viewState = .push
        self.currentVC = viewController
        self.naviVC?.pushViewController(viewController, animated: false)
    }
    
    func modalViewBindable(state: ViewPushState) {
        let viewController = (state.makeViewBindable() as? UIViewController) ?? rootVC
        self.viewState = .modal
        self.currentVC.present(viewController, animated: true, completion: nil)
    }
    
    func popViewController() {
        
    }
    
}
