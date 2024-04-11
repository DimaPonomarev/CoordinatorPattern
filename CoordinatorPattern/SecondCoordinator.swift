//
//  NextCoordinator.swift
//  CoordinatorPattern
//
//  Created by Дмитрий Пономарев on 29.09.2023.
//

import UIKit


class NextChildCoordinator: ChildCoordinatorProtocol {
    
    var navigationControler = UINavigationController()

    func start() {
        let vc = ThirdViewController()
        let viewModel = ThirdViewModel()
        vc.firstVM = viewModel
        viewModel.coordinator = self
        navigationControler.pushViewController(vc, animated: true)
    }
    
    func openPreviouseVC() {
        navigationControler
    }
    

}
