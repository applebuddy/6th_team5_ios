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
    func pushScene(scene: PushableScene)
    func modalScene(scene: PushableScene)
    func popViewController()
}

/// 화면 주체(rootVC)를 삽입하고 정리를 한다.
/// SceneManager는 RootViewController 위에 노출시키고자하는 ViewController를 노출시키는 역할을합니다.
class SceneManager: SceneManagerType {
    // Scene은 ViewController가 makeViewBindable 함수를 진행하였을 때 [viewModel을 주입하였을 때]의 상태를 뜻합니다.
    
    ///rootVC : RootViewController 변하지 않고 computed를 지원하기 위해 static 형태로 선언하였습니다.
    static var rootVC: UIViewController!
    ///naviVC : rootVC를 통해 UINavigationController를 획득하는 computed Property 입니다.
    private var naviVC: UINavigationController? {
        return SceneManager.rootVC?.navigationController ?? nil
    }
    var childVC: [UIViewController]? {
        return self.naviVC?.children
    }
    
    /// currentVC : 현재 노출되고 있는 ViewController를 표현하는 변수입니다.
    private var currentScene : UIViewController?
    /// viewState : 현재 currentVC가 어떤 상태로 노출되었는지를 표현하는 변수입니다.
    private var sceneState: ViewState?
    
    enum ViewState: String {
        case push
        case modal
        case none
    }
    
    /// Scene을 push 합니다.
    func pushScene(scene: PushableScene) {
        let viewController = (scene.makeViewBindable() as? UIViewController) ?? UIViewController() // static 애러뷰로 전환
        self.sceneState = .push
        self.currentScene = viewController
        self.naviVC?.pushViewController(viewController, animated: false)
    }
    
    /// Scene을 modal 합니다.
    func modalScene(scene: PushableScene) {
        let viewController = (scene.makeViewBindable() as? UIViewController) ?? UIViewController() // static 애러뷰로 전환
        self.sceneState = .modal
        self.currentScene?.present(viewController, animated: true, completion: nil)
    }
    
    /// 현재의 Scene을 끄고 새로운 Scene을 push 합니다.
    func changeCurrentScene(scene: PushableScene) {
        self.naviVC?.popViewController(animated: false)
        
        let viewController = (scene.makeViewBindable() as? UIViewController) ?? UIViewController() // static 애러뷰로 전환
        self.sceneState = .push
        self.currentScene = viewController
        self.naviVC?.pushViewController(viewController, animated: false)
    }
    
    func popViewController() {
        self.naviVC?.popViewController(animated: false)
    }
    
}
