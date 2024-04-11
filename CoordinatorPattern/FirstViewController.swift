//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Дмитрий Пономарев on 29.09.2023.
//

import UIKit


class FirstViewController: UIViewController {

    var firstVM: IfirstViewModel?
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.frame = CGRect(x: view.center.x, y: view.center.y, width: 100, height: 100)
        button.backgroundColor = .yellow
        view.backgroundColor = .cyan
        button.addTarget(self, action: #selector(openSecondVC), for: .touchDown)
    }

    @objc func openSecondVC(){
        firstVM?.somei()
    }
    
}

protocol IfirstViewModel {
    
    var coordinator: ChildCoordinator? { get set }
    func somei()

}

class FistViewModel: IfirstViewModel {
    
    var coordinator: ChildCoordinator?
    
    func somei() {
        coordinator?.openSecondVC()
    }
    
    
    
}
