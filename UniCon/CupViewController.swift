//
//  CupViewController.swift
//  UniCon
//
//  Created by Mateo Došlić on 08/04/2018.
//  Copyright © 2018 Mateo Došlić. All rights reserved.
//

import UIKit

class CupViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    @IBOutlet weak var cupValueInput: UITextField!
    @IBOutlet weak var cupValueInputOut: UITextField!
    
    let cupValue = ["mL", "L", "g", "cup", "OZ"]
    
    
    
    var pickerView1 = UIPickerView()
    var pickerView2 = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView1.delegate = self
        pickerView1.dataSource = self
        pickerView2.delegate = self
        pickerView2.dataSource = self
        
        cupValueInput.inputView = pickerView1
        cupValueInputOut.inputView = pickerView2
        cupValueInputOut.textAlignment = .center
        cupValueInput.textAlignment = .center
        
    }
    
    
    
    
    
    
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return cupValue.count
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cupValue[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerView1 {
            cupValueInput.text = cupValue[row]
            cupValueInput.resignFirstResponder()
            
        } else if pickerView == pickerView2{
            cupValueInputOut.text = cupValue[row]
            cupValueInputOut.resignFirstResponder()
        }
        
        
        
        
    }
    

}
