//
//  SettingsViewController.swift
//  tippy
//
//  Created by Alina Abidi on 6/20/17.
//  Copyright © 2017 Alina Abidi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let tipValue = defaults.double(forKey: "default_tip_percentage")
        defaultTipControl.selectedSegmentIndex = Int(tipValue)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func defaultTipValue(_ sender: Any) {
       
        let defaults = UserDefaults.standard
        defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "default_tip_percentage")
        defaults.synchronize()
            }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
