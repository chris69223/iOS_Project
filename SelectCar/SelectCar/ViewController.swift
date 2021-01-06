//
//  ViewController.swift
//  SelectCar
//
//  Created by 유저 on 2021/01/06.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var imgView: UIImageView!
    
    let carCompanyName = ["Tesla", "Lamborghini", "Porsche"]
    var carModel = [String]()
    
    var carModleImage = [String]()
    
    let tesla = ["Model S", "Model X"]
    let lamborghini = ["aventador", "veneno"]
    let porsche = ["911", "boxter"]
    
    let teslaImagenames = ["tesla-modle-s.jpg", "tesla-model-x.jpg"]
    let lamborghiniImageNames = ["lamborghini-aventador.jpg","lamborghini-veneno.jpg"]
    let porscheImageNames = ["porsche-911.jpg", "porsche-boxter.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carModel = tesla
        carModleImage = teslaImagenames
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return carCompanyName.count
        }else{
            return carModel.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return carCompanyName[row]
        }else{
            return carModel[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 && row == 0{
            carModel = tesla
            carModleImage = teslaImagenames
        }else if component == 0 && row == 1{
            carModel = lamborghini
            carModleImage = lamborghiniImageNames
        }else if component == 0 && row == 2{
            carModel = porsche
            carModleImage = porscheImageNames
        }
        pickerView.reloadAllComponents()
        imgView.image = UIImage(named:carModleImage[pickerView.selectedRow(inComponent: 1)])
    }
    
    
    
}

