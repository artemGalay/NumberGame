//
//  ComputerIsGuessingViewController.swift
//  NumberGame
//
//  Created by Артем Галай on 24.09.22.
//

import UIKit

class ComputerIsGuessingViewController: UIViewController {

    private var tryOne: ComputerIsGuessingView? {
        guard isViewLoaded else { return nil }
        return view as? ComputerIsGuessingView
    }

    override func loadView() {
        view = ComputerIsGuessingView()
//        tryOne?.startButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc private func buttonTapped() {
        let viewcontroller = EnterNumberViewController()
        navigationController?.pushViewController(viewcontroller, animated: true)
        }
    }
