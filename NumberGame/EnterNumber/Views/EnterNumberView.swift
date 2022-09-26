//
//  EnterNumberView.swift
//  NumberGame
//
//  Created by Артем Галай on 20.09.22.
//

import UIKit

class EnterNumberView: UIView {

    lazy var numberTexfield: UITextField = {
        let textfield = UITextField()
        textfield.textColor = .black
        textfield.textAlignment = .center
        textfield.placeholder = "Guess the number"
        textfield.layer.borderWidth = 1
        textfield.layer.cornerRadius = 5
        textfield.layer.borderColor = UIColor.separator.cgColor
        textfield.keyboardType = .numbersAndPunctuation
        textfield.returnKeyType = .done
        textfield.textContentType = .emailAddress
        textfield.clearButtonMode = .always
        return textfield
    }()

    lazy var enterNumberButton = UIButton(downText: "Enter the Number")

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupHierarchy() {
        addSubview(numberTexfield)
        addSubview(enterNumberButton)
    }

    private func setupLayout() {
        numberTexfield.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(safeAreaLayoutGuide.snp.top).offset(80)
            $0.width.equalTo(360)
            $0.height.equalTo(30)
        }

        enterNumberButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-50)
            $0.width.equalTo(360)
            $0.height.equalTo(45)
        }
    }
}
