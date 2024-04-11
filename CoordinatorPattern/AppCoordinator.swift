//
//  AppCoordinator.swift
//  CoordinatorPattern
//
//  Created by Дмитрий Пономарев on 29.09.2023.
//


import UIKit


protocol CoordinatorProtocol {
    
    func start()
}

class AppCoordinator: CoordinatorProtocol {
    
//    var childCoordinators = [ChildCoordinatorProtocol]()
    var window: UIWindow?
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let childCoordinator = ChildCoordinator()
//        childCoordinators.append(childCoordinator)
        window?.rootViewController = childCoordinator.navigationControler
        childCoordinator.start()
    }
}
