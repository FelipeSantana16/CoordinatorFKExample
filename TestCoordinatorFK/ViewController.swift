//
//  ViewController.swift
//  TestCoordinatorFK
//
//  Created by Felipe Santana on 28/07/21.
//

import UIKit


// All view controllers must sign the protocol coordinatable.
class ViewController: UIViewController, Coordinatable {
    var mainCoordinator: MainCoordinator?
    
    var buttonToA: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Ir para próxima tela", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        button.addTarget(self, action: #selector(callAViewController), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(buttonToA)
        view.backgroundColor = .red
        NSLayoutConstraint.activate([
            buttonToA.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonToA.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    
    // The mainCoordinator from Coordinatable protocol is the responsable for the app navigation
    @objc func callAViewController() {
        mainCoordinator?.callA()
    }
    

}

import CoordinatorFK

// We must to extend MainCoordinator class to informe how each view controller will be called
extension MainCoordinator {
    
    // All navigation functions must to follow the callA function pattern
    func callA() {
        let controllerA = AViewController()
        controllerA.mainCoordinator = self
        push(controllerA)
    }
    
}
