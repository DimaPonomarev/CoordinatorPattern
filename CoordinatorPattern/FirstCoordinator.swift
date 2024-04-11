//
//  AppCoordinator.swift
//  CoordinatorPattern
//
//  Created by Дмитрий Пономарев on 29.09.2023.
//


import UIKit



protocol ChildCoordinatorProtocol {
    
    func start()
}

class ChildCoordinator: ChildCoordinatorProtocol {
    
    var navigationControler = UINavigationController()

    func start() {
        let vc = FirstViewController()
        let viewModel = FistViewModel()
        vc.firstVM = viewModel
        viewModel.coordinator = self
        
        navigationControler.pushViewController(vc, animated: true)
    }
    
    func openSecondVC() {
        let vc = SecondViewController()
        let viewModel = SecondViewModel()
        vc.firstVM = viewModel
        viewModel.coordinator = self
        navigationControler.pushViewController(vc, animated: true)
    }
    
    func openPreviouseVC() {
        navigationControler.popViewController(animated: true)
    }
    
    func open() {
        let secondCoordinator = NextChildCoordinator()
//        secondCoordinator.navigationControler = self.navigationControler
        secondCoordinator.start()
    }
}
