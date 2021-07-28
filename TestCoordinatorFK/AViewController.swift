//
//  AViewController.swift
//  TestCoordinatorFK
//
//  Created by Felipe Santana on 28/07/21.
//

import UIKit
import CoordinatorFK

class AViewController: UIViewController, Coordinatable {
    var mainCoordinator: MainCoordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
    }

}
