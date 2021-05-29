//
//  LoginViewController.swift
//  Singleton
//
//  Created by 유저 on 2021/05/29.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentUser = CurrentUser.shared
        currentUser.name = "Sang"
        currentUser.age = 26
        
    }
}
