//
//  ViewController.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - Class properties

    var presenter: MainViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onStartButtonClicked(_ sender: Any) {
        presenter?.onStartButtonClicked()
    }
}

// MARK: - MainPresenterToViewProtocol

extension MainViewController: MainPresenterToViewProtocol {
}
