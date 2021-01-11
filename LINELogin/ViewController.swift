//
//  ViewController.swift
//  LINELogin
//
//  Created by ryosuke on 2021/01/11.
//

import UIKit
import LineSDK

class ViewController: UIViewController, LoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create Login Button.
        let loginButton = LoginButton()
        loginButton.delegate = self
        
        // Configuration for permissions and presenting.
        loginButton.permissions = [.profile]
        loginButton.presentingViewController = self
        
        // Add button to view and layout it.
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }


}

