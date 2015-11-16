//
//  FifthViewController.swift
//  Pizzart
//
//  Created by Mateo Villagomez on 16/11/15.
//  Copyright © 2015 Mateo Villagomez. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    @IBOutlet weak var ingredientsPicker: UIPickerView!
    
    var pickerData: [[String]] = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Connect data:
        self.ingredientsPicker.delegate = self
        self.ingredientsPicker.dataSource = self
        
        // Input data into the Array:
        pickerData = [["Tomato Sauce", "Mushrooms", "Pepperoni", "Olive Oil"],
                        ["Pine Apple", "Bacon", "Chicken", "Mushrooms"],
                        ["Ham", "Pepperoni", "Bacon", "Olive Oil"],
                        ["Mushrooms", "Ham", "Pine Apple", "Pepperoni"]]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 4
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
    // Catpure the picker view selection
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
    }
    

}
