//
//  ComputerIsGuessingViewController.swift
//  NumberGame
//
//  Created by Артем Галай on 24.09.22.
//

import UIKit

final class ComputerIsGuessingViewController: UIViewController {

    static var computerCount = 0

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
        ComputerIsGuessingViewController.computerCount += 1
        print(ComputerIsGuessingViewController.computerCount)
        PersonIsGuessingView.computerNumber = PersonIsGuessingView.computerNumber + Int.random(in: 1...15)
        tryComputer?.youNumberLabel.text = "Your number is - \(PersonIsGuessingView.computerNumber)?"
    }

    @objc private func buttonPassed() {
        ComputerIsGuessingViewController.computerCount += 1
        print(ComputerIsGuessingViewController.computerCount)
        PersonIsGuessingView.computerNumber = PersonIsGuessingView.computerNumber - Int.random(in: 1...15)
        tryComputer!.youNumberLabel.text = "Your number is - \(PersonIsGuessingView.computerNumber)?"
    }

    @objc private func buttonPressed() {
        if PersonIsGuessingView.computerNumber == EnterNumberViewController.personNumber {
            tryComputer?.myNumberLabel.text = "My number is \(PersonIsGuessingView.computerNumber)"
            let viewcontroller = PersonIsGuessingViewController()
            navigationController?.pushViewController(viewcontroller, animated: true)
        }
    }
}
