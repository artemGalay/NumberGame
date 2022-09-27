//
//  PersonIsGuessingView.swift
//  NumberGame
//
//  Created by Артем Галай on 27.09.22.
//

import UIKit

final class PersonIsGuessingView: UIView {

    var computerNumber = Int.random(in: 1...100)

    lazy var answerTexfield: UITextField = {
        let textfield = UITextField()
        textfield.textColor = .black
        textfield.textAlignment = .center
        textfield.placeholder = "Computer the number"
        textfield.layer.borderWidth = 1
        textfield.layer.cornerRadius = 5
        textfield.layer.borderColor = UIColor.separator.cgColor
        textfield.keyboardType = .numbersAndPunctuation
        textfield.returnKeyType = .done
        textfield.textContentType = .emailAddress
        textfield.clearButtonMode = .always
        return textfield
    }()

    lazy var tryLabel = UILabel(text: "Try № 2")
    lazy var guessingLabel = UILabel(text: "You are guessing")
    lazy var myNumberLabel = UILabel(text: "No text")

    lazy var guessButton = UIButton(downText: "Guess")

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
        addSubview(tryLabel)
        addSubview(guessingLabel)
        addSubview(myNumberLabel)
        addSubview(guessButton)
        addSubview(answerTexfield)
    }

    private func setupLayout() {
        tryLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(safeAreaLayoutGuide.snp.top).offset(40)
            $0.width.equalTo(300)
        }

        guessingLabel.snp.makeConstraints {
            $0.top.equalTo(tryLabel.snp.bottom).offset(20)
            $0.centerX.equalToSuperview()
        }

        answerTexfield.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(guessingLabel.snp.top).offset(60)
            $0.width.equalTo(360)
            $0.height.equalTo(30)
        }

        guessButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(answerTexfield.snp.bottom).offset(100)
            $0.width.equalTo(360)
            $0.height.equalTo(45)
        }

        myNumberLabel.snp.makeConstraints {
            $0.bottom.equalTo(guessButton.snp.bottom).offset(80)
            $0.centerX.equalToSuperview()
        }
    }
}
