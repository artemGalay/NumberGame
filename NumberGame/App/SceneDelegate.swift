//
//  SceneDelegate.swift
//  NumberGame
//
//  Created by Артем Галай on 19.09.22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let viewcontroller = MainViewController()
        let navigationcontroller = UINavigationController(rootViewController: viewcontroller)
        window?.rootViewController = navigationcontroller
        window?.makeKeyAndVisible()
    }
}
