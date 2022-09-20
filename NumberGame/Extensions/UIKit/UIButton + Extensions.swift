//
//  UIButton + Extensions.swift
//  NumberGame
//
//  Created by Артем Галай on 20.09.22.
//

import UIKit

extension UIButton {
    convenience init(text: String) {
        self.init()
        setTitle(text, for: .normal)
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 15
        backgroundColor = .blue
    }
}
