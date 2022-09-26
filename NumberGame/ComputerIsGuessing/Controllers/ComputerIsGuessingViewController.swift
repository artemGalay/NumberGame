//
//  ComputerIsGuessingViewController.swift
//  NumberGame
//
//  Created by Артем Галай on 24.09.22.
//

import UIKit

class ComputerIsGuessingViewController: UIViewController {

    private var tryPerson: ComputerIsGuessingView? {
        guard isViewLoaded else { return nil }
        return view as? ComputerIsGuessingView
    }

    override func loadView() {
        view = ComputerIsGuessingView()
        navigationItem.hidesBackButton = true
        tryPerson?.moreButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        tryPerson?.lessButton.addTarget(self, action: #selector(buttonPassed), for: .touchUpInside)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc private func buttonTapped() {
        tryPerson?.computerNumber = tryPerson!.computerNumber + Int.random(in: 1...15)
        tryPerson!.youNumberLabel.text = "Your number is - \(tryPerson?.computerNumber ?? 0)?"
    }

    @objc private func buttonPassed() {
        tryPerson?.computerNumber = tryPerson!.computerNumber - Int.random(in: 1...15)
        tryPerson!.youNumberLabel.text = "Your number is - \(tryPerson?.computerNumber ?? 0)?"
    }
}
