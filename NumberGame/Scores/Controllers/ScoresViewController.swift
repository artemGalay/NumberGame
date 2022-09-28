//
//  ScoresViewController.swift
//  NumberGame
//
//  Created by Артем Галай on 28.09.22.
//

import UIKit

class ScoresViewController: UIViewController {

    private var finalView: ScoresView? {
        guard isViewLoaded else { return nil }
        return view as? ScoresView
    }

    override func loadView() {
        view = ScoresView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        result(computerCount: ComputerIsGuessingViewController.computerCount,
               personCount: PersonIsGuessingViewController.personCount)
        finalView?.mainMenuButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    @objc private func buttonTapped() {
        ComputerIsGuessingViewController.computerCount = 0
        PersonIsGuessingViewController.personCount = 0
        ComputerIsGuessingView.computerNumber = Int.random(in: 1...100)
        let viewcontroller = MainViewController()
        navigationController?.pushViewController(viewcontroller, animated: true)
        }

    private func result(computerCount: Int, personCount: Int) {
        if  computerCount < personCount {
            finalView?.resultLabel.text = "Computer Win"
        } else if computerCount > personCount {
            finalView?.resultLabel.text = "You Win"
        } else {
            finalView?.resultLabel.text = "Friendship won"
        }
    }
}
