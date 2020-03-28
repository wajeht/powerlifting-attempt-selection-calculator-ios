//
//  ResultViewController.swift
//  Powerlifting Attempt Selectoin Calculator
//
//  Created by Ko Nyein on 3/26/20.
//  Copyright © 2020 Kyaw Nyein. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // squat
    @IBOutlet weak var txt_sq1RM: UILabel!
    
    @IBOutlet weak var txt_sq1_low: UILabel!
    @IBOutlet weak var txt_sq1_normal: UILabel!
    @IBOutlet weak var txt_sq1_high: UILabel!
    
    @IBOutlet weak var txt_sq2_low: UILabel!
    @IBOutlet weak var txt_sq2_normal: UILabel!
    @IBOutlet weak var txt_sq2_high: UILabel!
    
    @IBOutlet weak var txt_sq3_low: UILabel!
    @IBOutlet weak var txt_sq3_normal: UILabel!
    @IBOutlet weak var txt_sq3_high: UILabel!
    
    // bench
    @IBOutlet weak var txt_bn1RM: UILabel!
    
    @IBOutlet weak var txt_bn1_low: UILabel!
    @IBOutlet weak var txt_bn1_normal: UILabel!
    @IBOutlet weak var txt_bn1_high: UILabel!
    
    @IBOutlet weak var txt_bn2_low: UILabel!
    @IBOutlet weak var txt_bn2_normal: UILabel!
    @IBOutlet weak var txt_bn2_high: UILabel!
    
    @IBOutlet weak var txt_bn3_low: UILabel!
    @IBOutlet weak var txt_bn3_normal: UILabel!
    @IBOutlet weak var txt_bn3_high: UILabel!
    
    // deadlift
    @IBOutlet weak var txt_dl1RM: UILabel!
    
    @IBOutlet weak var txt_dl1_low: UILabel!
    @IBOutlet weak var txt_dl1_normal: UILabel!
    @IBOutlet weak var txt_dl1_high: UILabel!
    
    @IBOutlet weak var txt_dl2_low: UILabel!
    @IBOutlet weak var txt_dl2_normal: UILabel!
    @IBOutlet weak var txt_dl2_high: UILabel!
    
    @IBOutlet weak var txt_dl3_low: UILabel!
    @IBOutlet weak var txt_dl3_normal: UILabel!
    @IBOutlet weak var txt_dl3_high: UILabel!
    
    // total and wilks
    @IBOutlet weak var txt_totalAndWilks: UILabel!
    @IBOutlet weak var txt_Wilks: UILabel!
    @IBOutlet weak var txt_Total: UILabel!
    
    var wilks = String()
    var total = String()
    
    var sqOneRepMax = String()
    var bnOneRepMax = String()
    var dlOneRepMax = String()

    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        txt_Wilks.text = wilks
        txt_Total.text = total
        txt_sq1RM.text = sqOneRepMax
        txt_bn1RM.text = bnOneRepMax
        txt_dl1RM.text = dlOneRepMax
        
        txt_sq1RM.layer.cornerRadius = 10
        txt_sq1RM.clipsToBounds = true
        
        txt_bn1RM.layer.cornerRadius = 10
        txt_bn1RM.clipsToBounds = true
        
        txt_dl1RM.layer.cornerRadius = 10
        txt_dl1RM.clipsToBounds = true
        
        txt_totalAndWilks.layer.cornerRadius = 10
        txt_totalAndWilks.clipsToBounds = true


        // Do any additional setup after loading the view.
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
