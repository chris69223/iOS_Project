//
//  ViewController.swift
//  Singleton
//
//  Created by 유저 on 2021/05/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let curretUser = CurrentUser.shared
        print(curretUser.name ?? "")
    }
}

