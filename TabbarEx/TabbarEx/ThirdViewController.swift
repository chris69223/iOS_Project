//
//  ThirdViewController.swift
//  TabbarEx
//
//  Created by 유저 on 2021/01/06.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var outputLabel3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func button3(_ sender: Any) {
        outputLabel3.text = "3번 버튼이 눌렸습니다."
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
