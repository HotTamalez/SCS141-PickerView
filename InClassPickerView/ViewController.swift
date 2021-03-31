//
//  ViewController.swift
//  InClassPickerView
//
//  Created by zweakland on 3/30/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let foods = ["Apples", "Corn", "Pizza", "Bread", "Bananas"]
    
    // gives the pickerView a certain amount of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // gives the pickerView a certain amount of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return foods.count
    }
    
    // Returns the name for each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return foods[row]
    }
    
    // setting the text to a specific row that is chosen
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerLabel.text = foods[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerView.delegate = self
        pickerView.dataSource = self
    }


}

