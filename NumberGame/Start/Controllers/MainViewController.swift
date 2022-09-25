//
//  MainViewController.swift
//  NumberGame
//
//  Created by Артем Галай on 19.09.22.
//

import UIKit

class MainViewController: UIViewController {

    private var startView: MainView? {
        guard isViewLoaded else { return nil }
        return view as? MainView
    }

    override func loadView() {
        view = MainView()
        startView?.startButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc private func buttonTapped() {
        let viewcontroller = EnterNumberViewController()
        navigationController?.pushViewController(viewcontroller, animated: true)
        }
    }
