//
//  SpeedViewController.swift
//  UniCon
//
//  Created by Mateo Došlić on 08/04/2018.
//  Copyright © 2018 Mateo Došlić. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var speedValueField: UITextField! //Input value from what you want to convert from
    @IBOutlet weak var speedValueFieldOut: UITextField! // Reult outuput value
    
    let speedValue = ["km/h", "m/h", "m/s", "mph"]
    
    var pickerView1 = UIPickerView()
    var pickerView2 = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerView1.delegate = self
        pickerView1.dataSource = self
        pickerView2.delegate = self
        pickerView2.dataSource = self
        
        speedValueField.inputView = pickerView1
        speedValueFieldOut.inputView = pickerView2
        speedValueFieldOut.textAlignment = .center
        speedValueField.textAlignment = .center
        
    
        
    }


    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    

    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return speedValue.count
    }

    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return speedValue[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerView1 {
            speedValueField.text = speedValue[row]
            speedValueField.resignFirstResponder()
            
        } else if pickerView == pickerView2{
            speedValueFieldOut.text = speedValue[row]
            speedValueFieldOut.resignFirstResponder()
        }
        


        
    }
}
