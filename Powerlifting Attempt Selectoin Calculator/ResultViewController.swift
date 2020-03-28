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
    
    // squat attempts
    var sq1_low = String()
    var sq1_normal = String()
    var sq1_high = String()
    
    var sq2_low = String()
    var sq2_normal = String()
    var sq2_high = String()

    var sq3_low = String()
    var sq3_normal = String()
    var sq3_high = String()
    
    // bench attempts
    var bn1_low = String()
    var bn1_normal = String()
    var bn1_high = String()
    
    var bn2_low = String()
    var bn2_normal = String()
    var bn2_high = String()

    var bn3_low = String()
    var bn3_normal = String()
    var bn3_high = String()
    
    // deadlift attempts
    var dl1_low = String()
    var dl1_normal = String()
    var dl1_high = String()
    
    var dl2_low = String()
    var dl2_normal = String()
    var dl2_high = String()

    var dl3_low = String()
    var dl3_normal = String()
    var dl3_high = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // one rep maxes and wilks
        txt_Wilks.text = wilks
        txt_Total.text = total
        txt_sq1RM.text = sqOneRepMax
        txt_bn1RM.text = bnOneRepMax
        txt_dl1RM.text = dlOneRepMax
        
        // rounded conner
        txt_sq1RM.layer.cornerRadius = 10
        txt_sq1RM.clipsToBounds = true
        txt_bn1RM.layer.cornerRadius = 10
        txt_bn1RM.clipsToBounds = true
        txt_dl1RM.layer.cornerRadius = 10
        txt_dl1RM.clipsToBounds = true
        txt_totalAndWilks.layer.cornerRadius = 10
        txt_totalAndWilks.clipsToBounds = true
        
        
        // squat attemtps
        txt_sq1_low.text = sq1_low
        txt_sq1_normal.text = sq1_normal
        txt_sq1_high.text = sq1_high

        txt_sq2_low.text = sq2_low
        txt_sq2_normal.text = sq2_normal
        txt_sq2_high.text = sq2_high
        
        txt_sq3_low.text = sq3_low
        txt_sq3_normal.text = sq3_normal
        txt_sq3_high.text = sq3_high
        
        // bench attemtps
        txt_bn1_low.text = bn1_low
        txt_bn1_normal.text = bn1_normal
        txt_bn1_high.text = bn1_high

        txt_bn2_low.text = bn2_low
        txt_bn2_normal.text = bn2_normal
        txt_bn2_high.text = bn2_high
        
        txt_bn3_low.text = bn3_low
        txt_bn3_normal.text = bn3_normal
        txt_bn3_high.text = bn3_high
        
        
        // dl attemtps
        txt_dl1_low.text = dl1_low
        txt_dl1_normal.text = dl1_normal
        txt_dl1_high.text = dl1_high

        txt_dl2_low.text = dl2_low
        txt_dl2_normal.text = dl2_normal
        txt_dl2_high.text = dl2_high
        
        txt_dl3_low.text = dl3_low
        txt_dl3_normal.text = dl3_normal
        txt_dl3_high.text = dl3_high


        

    }
}
