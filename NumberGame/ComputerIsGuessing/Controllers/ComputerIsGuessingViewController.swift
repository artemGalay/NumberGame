//
//  ComputerIsGuessingViewController.swift
//  NumberGame
//
//  Created by Артем Галай on 24.09.22.
//

import UIKit

final class ComputerIsGuessingViewController: UIViewController {

    private var tryComputer: ComputerIsGuessingView? {
        guard isViewLoaded else { return nil }
        return view as? ComputerIsGuessingView
    }

    override func loadView() {
        view = ComputerIsGuessingView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        tryComputer?.moreButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        tryComputer?.lessButton.addTarget(self, action: #selector(buttonPassed), for: .touchUpInside)
        tryComputer?.equallyButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }

    @objc private func buttonTapped() {
        tryComputer?.computerNumber = tryComputer!.computerNumber + Int.random(in: 1...15)
        tryComputer!.youNumberLabel.text = "Your number is - \(tryComputer?.computerNumber ?? 0)?"
    }

    @objc private func buttonPassed() {
        tryComputer?.computerNumber = tryComputer!.computerNumber - Int.random(in: 1...15)
        tryComputer!.youNumberLabel.text = "Your number is - \(tryComputer?.computerNumber ?? 0)?"
    }

    @objc private func buttonPressed() {
        if tryComputer?.computerNumber == EnterNumberViewController.personNumber {
            tryComputer?.myNumberLabel.text = "My number is \(tryComputer?.computerNumber ?? 0)"
            let viewcontroller = PersonIsGuessingViewController()
            navigationController?.pushViewController(viewcontroller, animated: true)
        }
    }
}
