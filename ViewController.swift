//
//  ViewController.swift
//  DigitalFrame
//
//  Created by 유저 on 2021/01/03.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlide: UISlider!
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var speedLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cuteImages = [UIImage(named: "1.jpg")!,
                          UIImage(named: "2.jpg")!,
                          UIImage(named: "3.jpg")!,
                          UIImage(named: "4.jpg")!,
                          UIImage(named: "5.jpg")!,
                          UIImage(named: "6.jpg")!,
                          UIImage(named: "7.jpg")!,
                          UIImage(named: "8.jpg")!,
                          UIImage(named: "9.jpg")!,
                          UIImage(named: "10.jpg")!,
                          UIImage(named: "11.jpg")!,
                          UIImage(named: "12.jpg")!,
                          UIImage(named: "13.jpg")!,
                          UIImage(named: "14.jpg")!,
                          UIImage(named: "15.jpg")!
        ]
        imgView.animationImages = cuteImages
        imgView.animationDuration = 15
        speedLable.text = String(format: "%.2f", speedSlide.value)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func toggleButton(_ sender: Any) {
        if imgView.isAnimating{
            imgView.stopAnimating()
            toggleButton.setTitle(("Start"), for: UIControl.State.normal)
        }else{
            imgView.animationDuration = Double(speedSlide.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControl.State.normal)
        }
        
    }
    
    @IBAction func speedSlideAction(_ sender: Any) {
        imgView.animationDuration = Double(speedSlide.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControl.State.normal)
        //speedLable.text = "\(speedSlide.value)"
        speedLable.text = String(format: "%.2f", speedSlide.value)
    }
}

