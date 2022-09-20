//
//  EnterNumberView.swift
//  NumberGame
//
//  Created by Артем Галай on 20.09.22.
//

import UIKit

class EnterNumberView: UIView {

    private lazy var numberTexfield: UITextField = {
        let textfield = UITextField()
        return textfield
    }()

    lazy var enterNumberButton: UIButton = {
        let button = UIButton()
        button.setTitle("Enter the Number", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.backgroundColor = .blue
        return button
    }()

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
            $0.top.equalTo(safeAreaLayoutGuide.snp.top).offset(40)
            $0.width.equalTo(360)
        }

        enterNumberButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-50)
            $0.width.equalTo(360)
            $0.height.equalTo(45)
        }
    }
}
