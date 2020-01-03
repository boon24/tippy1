//
//  SettingsViewController.swift
//  tippy
//
//  Created by Haroon on 1/1/20.
//  Copyright © 2020 Haroon. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {


    @IBOutlet weak var defUISegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func defChange(_ sender: Any) {
         let amtIndex = defUISegmentedControl.selectedSegmentIndex
         let defaults = UserDefaults.standard
         defaults.set(amtIndex, forKey: "myAmount")
         defaults.synchronize()        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
