//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by 유저 on 2021/01/04.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("willappear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("willdidappear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("willdisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("diddisappear")
    }
}

