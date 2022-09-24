//
//  ComputerIsGuessingView.swift
//  NumberGame
//
//  Created by Артем Галай on 24.09.22.
//

import UIKit
import SnapKit

class ComputerIsGuessingView: UIView {

    let numberTry = 1

//    lazy var tryLabel = UIButton(text: "Try № \(numberTry)")
//    lazy var guessingLabel = <#expression#>

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
    }

    private func setupLayout() {
        tryLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(safeAreaLayoutGuide.snp.top).offset(70)
            $0.width.equalTo(300)
        }
    }
}


