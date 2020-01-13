//
//  ViewController.swift
//  DatePickerDemo
//
//  Created by Abdulsalam Mansour on 1/13/20.
//  Copyright © 2020 abdulsalam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let datePicker = UIDatePicker()
        
        datePicker.datePickerMode = UIDatePicker.Mode.date
        datePicker.addTarget(self, action: #selector (ViewController.datePickerValueChanged(sender:)), for: UIControl.Event.valueChanged)
        //the following line shows date picker instead of keyboard
        dateTextField.inputView = datePicker
    }
    
    @objc func datePickerValueChanged(sender : UIDatePicker){
        let formatter = DateFormatter()
        
        formatter.dateStyle = DateFormatter.Style.medium
        formatter.timeStyle = DateFormatter.Style.none
        dateTextField.text! = formatter.string(from: sender.date)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }


}

