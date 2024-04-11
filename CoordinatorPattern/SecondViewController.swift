//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Дмитрий Пономарев on 29.09.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    var firstVM: ISecondViewModel?
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.frame = CGRect(x: view.center.x, y: view.center.y, width: 100, height: 100)
        button.backgroundColor = .yellow
        view.backgroundColor = .brown
        button.addTarget(self, action: #selector(openSecondVC), for: .touchDown)
    }
    
    @objc func openSecondVC(){
        firstVM?.openFirstVC()
    }
}


protocol ISecondViewModel {
    
    var coordinator: ChildCoordinator? { get set }
    func openFirstVC()

}

class SecondViewModel: ISecondViewModel {
    
    var coordinator: ChildCoordinator?
    
    func openFirstVC() {
        coordinator?.openThirdVC()
    }
    
}
