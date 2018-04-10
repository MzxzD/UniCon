//
//  DistanceViewController.swift
//  UniCon
//
//  Created by Mateo Došlić on 08/04/2018.
//  Copyright © 2018 Mateo Došlić. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    
    @IBOutlet weak var distanceInput: UITextField!
    @IBOutlet weak var distanceInputOut: UITextField!
    
    let distanceValue = ["km", "hm", "m", "cm", "mm", "nm", "feet", "mile", "foot"]
    
    var pickerView1 = UIPickerView()
    var pickerView2 = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView1.delegate = self
        pickerView1.dataSource = self
        pickerView2.delegate = self
        pickerView2.dataSource = self
        
        distanceInput.inputView = pickerView1
        distanceInputOut.inputView = pickerView2
        distanceInputOut.textAlignment = .center
        distanceInput.textAlignment = .center
        
    }


    
    
    
    
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return distanceValue.count
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return distanceValue[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerView1 {
            distanceInput.text = distanceValue[row]
            distanceInput.resignFirstResponder()
            
        } else if pickerView == pickerView2{
            distanceInputOut.text = distanceValue[row]
            distanceInputOut.resignFirstResponder()
        }
        
        
        
        
    }
    

 

}
