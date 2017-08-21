//
//  ViewController.swift
//  MiraclePills
//
//  Created by Cruz Solano on 8/8/17.
//  Copyright © 2017 Cruz Solano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var enterCountry: UITextField!
    @IBOutlet weak var zipCode: UILabel!
    @IBOutlet weak var enterZipCode: UITextField!
    
    
    let states = ["Alaska", "Alabama", "Arkansas", "Oregon", "California", "New York", "Maine", "Idaho", "Washington"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {

        statePicker.isHidden = false
        country.isHidden = true
        enterCountry.isHidden = true
        zipCode.isHidden = true
        enterZipCode.isHidden = true
        
    }
   
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        country.isHidden = false
        enterCountry.isHidden = false
        zipCode.isHidden = false
        enterZipCode.isHidden = false
    }

}

