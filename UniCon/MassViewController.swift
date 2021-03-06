//
//  MassViewController.swift
//  UniCon
//
//  Created by Mateo Došlić on 08/04/2018.
//  Copyright © 2018 Mateo Došlić. All rights reserved.
//

import UIKit

class MassViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    
    @IBOutlet weak var massValueInput: UITextField!
    @IBOutlet weak var massValueInputOut: UITextField!
    
    let massValue = ["gram", "kg", "ton", "pound"]
    
    var pickerView1 = UIPickerView()
    var pickerView2 = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView1.delegate = self
        pickerView1.dataSource = self
        pickerView2.delegate = self
        pickerView2.dataSource = self
        
        massValueInput.inputView = pickerView1
        massValueInputOut.inputView = pickerView2
        massValueInputOut.textAlignment = .center
        massValueInput.textAlignment = .center
        
    }
    
    
    
    
    
    
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return massValue.count
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return massValue[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerView1 {
            massValueInput.text = massValue[row]
            massValueInput.resignFirstResponder()
            
        } else if pickerView == pickerView2{
            massValueInputOut.text = massValue[row]
            massValueInputOut.resignFirstResponder()
        }
        
        
        
        
    }

}
