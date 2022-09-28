//
//  ScoresView.swift
//  NumberGame
//
//  Created by Артем Галай on 28.09.22.
//

import UIKit

class ScoresView: UIView {

    lazy var scoreLabel = UILabel(text: "Scores:")
    lazy var yoursTriesCountLabel = UILabel(text: "Your's tries count: \(PersonIsGuessingViewController.personCount)")
    lazy var computersTriesCountLabel = UILabel(text: "Computer tries count: \(ComputerIsGuessingViewController.computerCount)")
    lazy var resultLabel = UILabel(text: "")

    lazy var mainMenuButton = UIButton(downText: "Main menu")

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
        addSubview(scoreLabel)
        addSubview(yoursTriesCountLabel)
        addSubview(computersTriesCountLabel)
        addSubview(resultLabel)
        addSubview(mainMenuButton)
    }

    private func setupLayout() {
        scoreLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            $0.width.equalTo(300)
        }

        yoursTriesCountLabel.snp.makeConstraints {
            $0.top.equalTo(scoreLabel.snp.bottom).offset(200)
            $0.leading.equalToSuperview().offset(20)
        }

        computersTriesCountLabel.snp.makeConstraints {
            $0.top.equalTo(yoursTriesCountLabel.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(20)
        }

        resultLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(mainMenuButton.snp.top).offset(-30)
        }

        mainMenuButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-50)
            $0.width.equalTo(360)
            $0.height.equalTo(45)
        }
    }
}
