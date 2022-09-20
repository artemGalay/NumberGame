//
//  EnterNumberViewController.swift
//  NumberGame
//
//  Created by Артем Галай on 20.09.22.
//

import UIKit

class EnterNumberViewController: UIViewController {

    private var startView: EnterNumberView? {
        guard isViewLoaded else { return nil }
        return view as? EnterNumberView
    }

    override func loadView() {
        view = EnterNumberView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}
