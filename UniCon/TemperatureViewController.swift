//
//  TemperatureViewController.swift
//  UniCon
//
//  Created by Mateo Došlić on 08/04/2018.
//  Copyright © 2018 Mateo Došlić. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    @IBOutlet var temperatireValueInput: UITextField!
    @IBOutlet var temperatureValueInputOut: UITextField!
    
    let tempValue = ["C","F", "K" ]
    
    var pickerView1 = UIPickerView()
    var pickerView2 = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView1.delegate = self
        pickerView1.dataSource = self
        pickerView2.delegate = self
        pickerView2.dataSource = self
        
    
        temperatireValueInput.inputView = pickerView1
        temperatureValueInputOut.inputView = pickerView2
        temperatureValueInputOut.textAlignment = .center
        temperatireValueInput.textAlignment = .center
 
        
    }
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return tempValue.count
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tempValue[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerView1 {
            temperatireValueInput.text = tempValue[row]
            temperatireValueInput.resignFirstResponder()
            
        } else if pickerView == pickerView2{
            temperatureValueInputOut.text = tempValue[row]
            temperatureValueInputOut.resignFirstResponder()
        }
        
        
        
        
    }



}
