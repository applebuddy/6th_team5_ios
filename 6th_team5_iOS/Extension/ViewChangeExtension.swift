//
//  extension.swift
//  HHTrip
//
//  Created by 정하민 on 2020/04/10.
//  Copyright © 2020 JHM. All rights reserved.
//

import Foundation
import UIKit

extension RootViewController {
    func pushViewBindable(state: ViewPushState) {
        let viewController = state.makeViewBindable() as! UIViewController
        self.navigationController?.pushViewController(viewController, animated: false)
    }
    
    func modalViewBindable(state: ViewPushState) {
        
    }
    
    func popViewController() {
        
    }
    
    
}
