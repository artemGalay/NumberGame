//
//  UIButton + Extensions.swift
//  NumberGame
//
//  Created by Артем Галай on 20.09.22.
//

import UIKit

extension UIButton {
    convenience init(downText: String) {
        self.init()
        setTitle(downText, for: .normal)
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 15
        backgroundColor = .blue
    }

    convenience init(text: String) {
        self.init()
        setTitle(text, for: .normal)
        setTitleColor(.black, for: .normal)
        backgroundColor = .white
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
    }
}
