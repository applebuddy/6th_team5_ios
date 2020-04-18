//
//  extension.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/10.
//  Copyright © 2020 JHM. All rights reserved.
//

import Foundation
import UIKit

protocol SceneManagerType {
    mutating func pushViewBindable(state: ViewPushState)
    mutating func modalViewBindable(state: ViewPushState)
    func popViewController()
}

/// 화면 주체(rootVC)를 삽입하고 정리를 한다.
/// struct으로 가는 이유는 UIViewController 자체가 class 이기 때문에 struct으로 구성하면 자연스럽게 deinit이 될 수 있기 때문이다.
/// rootVC를 static 하게 선언하고 rootView이기 때문에 naviVC를 computed property로 획득한다.
/// currentVC는 현재 노출되고 있는 화면으로 push, modal 등 현재의 상태를 노출하는 역할을 한다.
class SceneManager: SceneManagerType {
    
    static var rootVC: UIViewController!
    private var naviVC: UINavigationController? {
        return SceneManager.rootVC?.navigationController ?? nil
    }
    
    private var currentVC : UIViewController?
    private var viewState: ViewState? // view의 상태를 나타냄 : push modal 등 현재 상태
    
    enum ViewState: String {
        case push
        case modal
        case none
    }
    
    func pushViewBindable(state: ViewPushState) {
        let viewController = (state.makeViewBindable() as? UIViewController) ?? UIViewController() // 애러뷰로 전환
        self.viewState = .push
        self.currentVC = viewController
        self.naviVC?.pushViewController(viewController, animated: false)
    }
    
    func modalViewBindable(state: ViewPushState) {
        let viewController = (state.makeViewBindable() as? UIViewController) ?? UIViewController() // 애러뷰로 전환
        self.viewState = .modal
        self.currentVC?.present(viewController, animated: true, completion: nil)
    }
    
    func popViewController() {
        
    }
    
}
