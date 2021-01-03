//
//  ViewController.swift
//  sangProject
//
//  Created by 유저 on 2021/01/02.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Click_moveBtn(_ sender: Any) {
        //1. storyboard find controller
        //2. DetailController
        //옵셔널 바인딩 이거 진짜 많이 쓰인다! 다시 복습!
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "DetailController"){
            self.navigationController?.pushViewController(controller, animated: true)
        }//3. move controller
    }
    
    @IBAction func Click_moveBtn2(_ sender: Any) {
        if let controller2 = self.storyboard?.instantiateViewController(withIdentifier: "pageTwo"){
            self.navigationController?.pushViewController(controller2, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

