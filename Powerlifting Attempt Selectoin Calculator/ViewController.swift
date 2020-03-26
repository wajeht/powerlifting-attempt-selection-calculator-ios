//
//  ViewController.swift
//  Powerlifting Attempt Selectoin Calculator
//
//  Created by Ko Nyein on 3/25/20.
//  Copyright © 2020 Kyaw Nyein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMale: UIButton!
    @IBOutlet weak var lblFemale: UIButton!
    @IBOutlet weak var lblCalculate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblCalculate.layer.cornerRadius = 10

        
    }
    
    var isClicked:Bool = false
    
    @IBAction func btnMale(_ sender: Any) {
        
        if isClicked {
            isClicked = false
            self.lblMale.backgroundColor = UIColor.red
            self.lblMale.layer.cornerRadius = 10
            self.lblMale.titleLabel?.textColor = UIColor.white
        }
        else {
            isClicked = true
            self.lblMale.backgroundColor = UIColor.white
            self.lblMale.layer.cornerRadius = 10
            self.lblMale.titleLabel?.textColor = UIColor.black
        }
    }
    
    @IBAction func btnFemale(_ sender: Any) {

        
        if isClicked {
            isClicked = false
            self.lblFemale.backgroundColor = UIColor.red
            self.lblFemale.layer.cornerRadius = 10
            self.lblFemale.titleLabel?.textColor = UIColor.white
        }
        else {
            isClicked = true
            self.lblFemale.backgroundColor = UIColor.white
            self.lblFemale.layer.cornerRadius = 10
            self.lblFemale.titleLabel?.textColor = UIColor.black
        }
        
        
    }
    
    @IBAction func btnCalculate(_ sender: Any) {
        
        print("calculate")
    }
    
}

