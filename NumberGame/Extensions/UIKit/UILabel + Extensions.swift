//
//  UILabel + Extensions.swift
//  NumberGame
//
//  Created by Артем Галай on 24.09.22.
//

import UIKit

extension UILabel {
    convenience init(text: String) {
        self.init()
        self.text = text
        font = .systemFont(ofSize: 24)
        textAlignment = .center
        textColor = .black
    }
}
