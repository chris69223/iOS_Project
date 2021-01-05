//
//  ViewController.swift
//  FlightBooking
//
//  Created by 유저 on 2021/01/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var departureDateBtn: UIButton!
    @IBOutlet weak var returnDateLabel: UILabel!
    @IBOutlet weak var returnDateBtn: UIButton!
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    var buttonTag:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        returnDateBtn.isHidden = true
        selectDatePicker.isHidden = true
    }

    
    @IBAction func showDatePicker(_ sender: UIButton) {
        if selectDatePicker.isHidden == false{
            selectDatePicker.isHidden = true
        }else{
            selectDatePicker.isHidden = false
        }
        buttonTag = sender.tag
    }
    
    @IBAction func showReturnDateAction(_ sender: UISwitch) {
//        if (sender as! UISwitch).isOn{
//            returnDateBtn.isHidden = false
//            returnDateLabel.isHidden = false
//        }else{
//            returnDateBtn.isHidden = true
//            returnDateLabel.isHidden = true
//        }
        returnDateBtn.isHidden = !sender.isOn
        returnDateLabel.isHidden = !sender.isOn
    }
    
    @IBAction func selectedDateAction(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        
        let dataString = formatter.string(from: sender.date)
        if buttonTag == 1 {
            departureDateBtn.setTitle(dataString, for: UIControl.State.normal)
        }else{
            returnDateBtn.setTitle(dataString, for: UIControl.State.normal)
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }
}

