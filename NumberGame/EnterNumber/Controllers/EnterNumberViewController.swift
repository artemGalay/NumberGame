//
//  EnterNumberViewController.swift
//  NumberGame
//
//  Created by Артем Галай on 20.09.22.
//

import UIKit

class EnterNumberViewController: UIViewController {

    static var personNumber: Int = 0

    private var startView: EnterNumberView? {
        guard isViewLoaded else { return nil }
        return view as? EnterNumberView
    }

    override func loadView() {
        view = EnterNumberView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        startView?.numberTexfield.delegate = self
        startView?.numberTexfield.addTarget(self, action: #selector(buttonTapped), for: .editingDidEnd)
        startView?.enterNumberButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }

    @objc private func buttonTapped() {
        EnterNumberViewController.personNumber = Int((startView?.numberTexfield.text!)!)!
        print("personNumber = \(EnterNumberViewController.personNumber)")
        }

    @objc private func buttonPressed() {
                let viewcontroller = ComputerIsGuessingViewController()
                navigationController?.pushViewController(viewcontroller, animated: true)
    }
    }

extension EnterNumberViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        startView?.numberTexfield.resignFirstResponder()
        return true
      }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return string == string.filter("0123456789".contains)
    }

//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        if textField == startView?.numberTexfield {
//            personNumber = (startView?.numberTexfield.text)!
//            print("personNumber = \(personNumber)")
//           }
//       }
}
