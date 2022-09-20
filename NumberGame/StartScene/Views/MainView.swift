//
//  MainView.swift
//  NumberGame
//
//  Created by Артем Галай on 20.09.22.
//

import UIKit
import SnapKit

class MainView: UIView {

    private lazy var myGameLabel: UILabel = {
        let label = UILabel()
        label.text = "My Awesome Game"
        label.font = .systemFont(ofSize: 24)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()

    lazy var startButton = UIButton(text: "Start New Game")

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
        addSubview(myGameLabel)
        addSubview(startButton)
    }

    private func setupLayout() {
        myGameLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(safeAreaLayoutGuide.snp.top).offset(70)
            $0.width.equalTo(300)
        }

        startButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-50)
            $0.width.equalTo(360)
            $0.height.equalTo(45)
        }
    }

//    @objc func buttonTapped() {
////        let navigator = UINavigationController(rootViewController: MainViewController())
////        navigator.pushViewController(EnterNumberViewController(), animated: true)
//    }
}
