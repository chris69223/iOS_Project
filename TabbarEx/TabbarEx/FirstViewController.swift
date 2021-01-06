//
//  FirstViewController.swift
//  TabbarEx
//
//  Created by 유저 on 2021/01/06.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var outputlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonAction(_ sender: Any) {
        outputlabel.text = "1번 버튼이 눌렸습니다."
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
