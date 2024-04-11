

//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Дмитрий Пономарев on 29.09.2023.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var firstVM: IThirdViewModel?
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.frame = CGRect(x: view.center.x, y: view.center.y, width: 100, height: 100)
        button.backgroundColor = .yellow
        view.backgroundColor = .orange
        button.addTarget(self, action: #selector(openSecondVC), for: .touchDown)
    }
    
    @objc func openSecondVC(){
        firstVM?.openFirstVC()
    }
}


protocol IThirdViewModel {
    
    var coordinator: NextChildCoordinator? { get set }
    func openFirstVC()

}

class ThirdViewModel: IThirdViewModel {
    
    var coordinator: NextChildCoordinator?
    
    func openFirstVC() {
        coordinator?.openPreviouseVC()
//        coordinator?()
    }
    
}
