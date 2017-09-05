//
//  ViewController.swift
//  LoveFinder
//
//  Created by Vivian on 2017/9/2.
//  Copyright © 2017年 Vivian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var gender: UISegmentedControl!
    
    @IBOutlet weak var birthday: UIDatePicker!
    
    @IBOutlet weak var height: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var haveHouse: UISwitch!
    
    @IBOutlet weak var result: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        name.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeHeight(_ sender: Any) {
        var slider = sender as! UISlider
        var h = slider.value
        var i = Int(h)
        heightLabel.text = "\(i)cm"
    }
    
    @IBAction func okDidTap(_ sender: Any) {
        let genderText = gender.selectedSegmentIndex == 0 ? "Boy" : "Girl"
        let house = haveHouse.isOn ? "have house" : "no house"
        result.text = "\(String(describing: name.text)), \(genderText), 生日\(birthday.date), 身高\(String(describing: heightLabel.text)), \(house)"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        name.resignFirstResponder()
        return true
    }
}

