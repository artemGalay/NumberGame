//
//  PersonIsGuessingViewController.swift
//  NumberGame
//
//  Created by Артем Галай on 27.09.22.
//

import UIKit

final class PersonIsGuessingViewController: UIViewController {

    var personNumber: Int = 0

    private var tryPerson: PersonIsGuessingView? {
        guard isViewLoaded else { return nil }
        return view as? PersonIsGuessingView
    }

    override func loadView() {
        view = PersonIsGuessingView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        tryPerson?.answerTexfield.delegate = self
        tryPerson?.answerTexfield.addTarget(self, action: #selector(buttonTapped), for: .editingDidEnd)
        tryPerson?.guessButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)

    }
    @objc private func buttonTapped() {
        //        personNumber = Int((tryPerson?.answerTexfield.text!)!)!
        print("\(tryPerson?.computerNumber ?? 0) = \(EnterNumberViewController.personNumber)")
    }

    @objc private func buttonPressed() {

        if tryPerson!.computerNumber < Int((tryPerson?.answerTexfield.text!)!) ?? 0 {
            tryPerson?.myNumberLabel.text = "No, my number is less than yours"

        } else if tryPerson!.computerNumber > Int((tryPerson?.answerTexfield.text!)!) ?? 0 {
            tryPerson?.myNumberLabel.text = "No, my number is more than yours"
        } else {
            print("success")
        }
    }
}

extension PersonIsGuessingViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tryPerson?.answerTexfield.resignFirstResponder()
        return true
      }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return string == string.filter("0123456789".contains)
    }
}
