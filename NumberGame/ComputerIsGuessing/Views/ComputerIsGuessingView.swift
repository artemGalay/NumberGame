//
//  ComputerIsGuessingView.swift
//  NumberGame
//
//  Created by Артем Галай on 24.09.22.
//

import UIKit
import SnapKit

final class ComputerIsGuessingView: UIView {
    
    static var computerNumber = Int.random(in: 1...100)
    
    lazy var tryLabel = UILabel(text: "Try № 1")
    lazy var guessingLabel = UILabel(text: "Computer is guessing")
    lazy var youNumberLabel = UILabel(text: "Your number is - \(ComputerIsGuessingView.computerNumber) ?")
    lazy var myNumberLabel = UILabel(text: "My number is...")
    
    lazy var moreButton = UIButton(text: ">")
    lazy var equallyButton = UIButton(text: "=")
    lazy var lessButton = UIButton(text: "<")
    
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
        addSubview(youNumberLabel)
        addSubview(myNumberLabel)
        addSubview(moreButton)
        addSubview(equallyButton)
        addSubview(lessButton)
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
        
        youNumberLabel.snp.makeConstraints {
            $0.top.equalTo(guessingLabel.snp.bottom).offset(100)
            $0.centerX.equalToSuperview()
        }
        
        myNumberLabel.snp.makeConstraints {
            $0.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-180)
            $0.centerX.equalToSuperview()
        }
        
        moreButton.snp.makeConstraints {
            $0.top.equalTo(myNumberLabel.snp.bottom).offset(10)
            $0.leading.equalToSuperview().offset(130)
            $0.width.height.equalTo(50)
        }
        
        equallyButton.snp.makeConstraints {
            $0.centerY.equalTo(moreButton)
            $0.width.height.equalTo(50)
            $0.leading.equalTo(moreButton.snp.trailing).offset(10)
        }
        
        lessButton.snp.makeConstraints {
            $0.centerY.equalTo(equallyButton)
            $0.width.height.equalTo(50)
            $0.leading.equalTo(equallyButton.snp.trailing).offset(10)
        }
    }
}
