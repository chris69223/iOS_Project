//
//  ViewController2.swift
//  Singleton
//
//  Created by 유저 on 2021/05/29.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentUser = CurrentUser.shared
        print(currentUser.age ?? 0)
        
    }
}
