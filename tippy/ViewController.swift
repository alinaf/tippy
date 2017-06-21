//
//  ViewController.swift
//  tippy
//
//  Created by Alina Abidi on 6/20/17.
//  Copyright © 2017 Alina Abidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let tipValue = defaults.double(forKey: "default_tip_percentage")
        tipControl.selectedSegmentIndex = Int(tipValue)
        self.billField.becomeFirstResponder()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let bill = Double(billField.text!) ?? 0
        
        // If the double of the user's value equals nil (i.e. they don't enter a number), return the default value of 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

