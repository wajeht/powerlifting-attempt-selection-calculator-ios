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
    
    
    var total_squat = [Double]()
    var total_bench = [Double]()
    var total_deadlift = [Double]()

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
        txt_sq1RM.clipsToBounds = false
        txt_bn1RM.layer.cornerRadius = 10
        txt_bn1RM.clipsToBounds = false
        txt_dl1RM.layer.cornerRadius = 10
        txt_dl1RM.clipsToBounds = false
        txt_totalAndWilks.layer.cornerRadius = 10
        txt_totalAndWilks.clipsToBounds = false
        
        
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
        
        let stap_txt_sq1_low = UITapGestureRecognizer(target: self,  action: #selector(tap_sq1_low))
        let ltap_txt_sq1_low = UILongPressGestureRecognizer(target: self,  action: #selector(untap_sq1_low))
        txt_sq1_low.addGestureRecognizer(stap_txt_sq1_low)
        txt_sq1_low.addGestureRecognizer(ltap_txt_sq1_low)

        
        let stap_txt_sq1_normal = UITapGestureRecognizer(target: self,  action: #selector(tap_sq1_normal))
        let ltap_txt_sq1_normal = UILongPressGestureRecognizer(target: self,  action: #selector(untap_sq1_normal))
        txt_sq1_normal.addGestureRecognizer(stap_txt_sq1_normal)
        txt_sq1_normal.addGestureRecognizer(ltap_txt_sq1_normal)
        
        let stap_txt_sq1_high = UITapGestureRecognizer(target: self,  action: #selector(tap_sq1_high))
        let ltap_txt_sq1_high = UILongPressGestureRecognizer(target: self,  action: #selector(untap_sq1_high))
        txt_sq1_high.addGestureRecognizer(stap_txt_sq1_high)
        txt_sq1_high.addGestureRecognizer(ltap_txt_sq1_high)
        
        
        
        
        let stap_txt_sq2_low = UITapGestureRecognizer(target: self,  action: #selector(tap_sq2_low))
        let ltap_txt_sq2_low = UILongPressGestureRecognizer(target: self,  action: #selector(untap_sq2_low))
        txt_sq2_low.addGestureRecognizer(stap_txt_sq2_low)
        txt_sq2_low.addGestureRecognizer(ltap_txt_sq2_low)

        
        let stap_txt_sq2_normal = UITapGestureRecognizer(target: self,  action: #selector(tap_sq2_normal))
        let ltap_txt_sq2_normal = UILongPressGestureRecognizer(target: self,  action: #selector(untap_sq2_normal))
        txt_sq2_normal.addGestureRecognizer(stap_txt_sq2_normal)
        txt_sq2_normal.addGestureRecognizer(ltap_txt_sq2_normal)
        
        let stap_txt_sq2_high = UITapGestureRecognizer(target: self,  action: #selector(tap_sq2_high))
        let ltap_txt_sq2_high = UILongPressGestureRecognizer(target: self,  action: #selector(untap_sq2_high))
        txt_sq2_high.addGestureRecognizer(stap_txt_sq2_high)
        txt_sq2_high.addGestureRecognizer(ltap_txt_sq2_high)
        
        
        
        let stap_txt_sq3_low = UITapGestureRecognizer(target: self,  action: #selector(tap_sq3_low))
        let ltap_txt_sq3_low = UILongPressGestureRecognizer(target: self,  action: #selector(untap_sq3_low))
        txt_sq3_low.addGestureRecognizer(stap_txt_sq3_low)
        txt_sq3_low.addGestureRecognizer(ltap_txt_sq3_low)

        
        let stap_txt_sq3_normal = UITapGestureRecognizer(target: self,  action: #selector(tap_sq3_normal))
        let ltap_txt_sq3_normal = UILongPressGestureRecognizer(target: self,  action: #selector(untap_sq3_normal))
        txt_sq3_normal.addGestureRecognizer(stap_txt_sq3_normal)
        txt_sq3_normal.addGestureRecognizer(ltap_txt_sq3_normal)
        
        let stap_txt_sq3_high = UITapGestureRecognizer(target: self,  action: #selector(tap_sq3_high))
        let ltap_txt_sq3_high = UILongPressGestureRecognizer(target: self,  action: #selector(untap_sq3_high))
        txt_sq3_high.addGestureRecognizer(stap_txt_sq3_high)
        txt_sq3_high.addGestureRecognizer(ltap_txt_sq3_high)
        
        
        

        
    }
    


    
    @objc func tap_sq1_low(){
        total_squat.append((txt_sq1_low.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_sq1_low.backgroundColor = UIColor.red
        txt_sq1_low.layer.cornerRadius = 10
        txt_sq1_low.clipsToBounds = true
        txt_sq1_low.textColor = UIColor.white
        
    }
    
    @objc func untap_sq1_low(){
        while let certainIndex = total_squat.index(of: (txt_sq1_low.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_sq1_low.backgroundColor = UIColor.white
        txt_sq1_low.layer.cornerRadius = 10
        txt_sq1_low.clipsToBounds = true
        txt_sq1_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_sq1_normal(){
        total_squat.append((txt_sq1_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_sq1_normal.backgroundColor = UIColor.red
        txt_sq1_normal.layer.cornerRadius = 10
        txt_sq1_normal.clipsToBounds = true
        txt_sq1_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_sq1_normal(){
        while let certainIndex = total_squat.index(of: (txt_sq1_normal.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_sq1_normal.backgroundColor = UIColor.white
        txt_sq1_normal.layer.cornerRadius = 10
        txt_sq1_normal.clipsToBounds = true
        txt_sq1_normal.textColor = UIColor.black

    }
    
    @objc func tap_sq1_high(){
        total_squat.append((txt_sq1_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_sq1_high.backgroundColor = UIColor.red
        txt_sq1_high.layer.cornerRadius = 10
        txt_sq1_high.clipsToBounds = true
        txt_sq1_high.textColor = UIColor.white
        
    }
    
    @objc func untap_sq1_high(){
        while let certainIndex = total_squat.index(of: (txt_sq1_high.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_sq1_high.backgroundColor = UIColor.white
        txt_sq1_high.layer.cornerRadius = 10
        txt_sq1_high.clipsToBounds = true
        txt_sq1_high.textColor = UIColor.black

    }
    
    
    @objc func tap_sq2_low(){
        total_squat.append((txt_sq2_low.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_sq2_low.backgroundColor = UIColor.red
        txt_sq2_low.layer.cornerRadius = 10
        txt_sq2_low.clipsToBounds = true
        txt_sq2_low.textColor = UIColor.white
        
    }
    
    @objc func untap_sq2_low(){
        while let certainIndex = total_squat.index(of: (txt_sq2_low.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_sq2_low.backgroundColor = UIColor.white
        txt_sq2_low.layer.cornerRadius = 10
        txt_sq2_low.clipsToBounds = true
        txt_sq2_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_sq2_normal(){
        total_squat.append((txt_sq2_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_sq2_normal.backgroundColor = UIColor.red
        txt_sq2_normal.layer.cornerRadius = 10
        txt_sq2_normal.clipsToBounds = true
        txt_sq2_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_sq2_normal(){
        while let certainIndex = total_squat.index(of: (txt_sq2_normal.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_sq2_normal.backgroundColor = UIColor.white
        txt_sq2_normal.layer.cornerRadius = 10
        txt_sq2_normal.clipsToBounds = true
        txt_sq2_normal.textColor = UIColor.black

    }
    
    @objc func tap_sq2_high(){
        total_squat.append((txt_sq2_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_sq2_high.backgroundColor = UIColor.red
        txt_sq2_high.layer.cornerRadius = 10
        txt_sq2_high.clipsToBounds = true
        txt_sq2_high.textColor = UIColor.white
        
    }
    
    @objc func untap_sq2_high(){
        while let certainIndex = total_squat.index(of: (txt_sq2_high.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_sq2_high.backgroundColor = UIColor.white
        txt_sq2_high.layer.cornerRadius = 10
        txt_sq2_high.clipsToBounds = true
        txt_sq2_high.textColor = UIColor.black

    }
    
    
    

    @objc func tap_sq3_low(){
        total_squat.append((txt_sq3_low.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_sq3_low.backgroundColor = UIColor.red
        txt_sq3_low.layer.cornerRadius = 10
        txt_sq3_low.clipsToBounds = true
        txt_sq3_low.textColor = UIColor.white
        
    }
    
    @objc func untap_sq3_low(){
        while let certainIndex = total_squat.index(of: (txt_sq3_low.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_sq3_low.backgroundColor = UIColor.white
        txt_sq3_low.layer.cornerRadius = 10
        txt_sq3_low.clipsToBounds = true
        txt_sq3_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_sq3_normal(){
        total_squat.append((txt_sq3_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_sq3_normal.backgroundColor = UIColor.red
        txt_sq3_normal.layer.cornerRadius = 10
        txt_sq3_normal.clipsToBounds = true
        txt_sq3_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_sq3_normal(){
        while let certainIndex = total_squat.index(of: (txt_sq3_normal.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_sq3_normal.backgroundColor = UIColor.white
        txt_sq3_normal.layer.cornerRadius = 10
        txt_sq3_normal.clipsToBounds = true
        txt_sq3_normal.textColor = UIColor.black

    }
    
    @objc func tap_sq3_high(){
        total_squat.append((txt_sq3_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_sq3_high.backgroundColor = UIColor.red
        txt_sq3_high.layer.cornerRadius = 10
        txt_sq3_high.clipsToBounds = true
        txt_sq3_high.textColor = UIColor.white
        
    }
    
    @objc func untap_sq3_high(){
        while let certainIndex = total_squat.index(of: (txt_sq3_high.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_sq3_high.backgroundColor = UIColor.white
        txt_sq3_high.layer.cornerRadius = 10
        txt_sq3_high.clipsToBounds = true
        txt_sq3_high.textColor = UIColor.black

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // calculators
    func highestSquatAttempt() -> Double{
        var max = 0.0
        
        if (!total_squat.isEmpty)
        {
            max = total_squat.max()!
        }
        return max
    }
    
    
    func highestBenchAttempt() -> Double{
        var max = 0.0
        
        if (!total_bench.isEmpty)
        {
            max = total_bench.max()!
        }
        return max
    }
    
    func highestDeadliftAttempt() -> Double{
        var max = 0.0
        
        if (!total_deadlift.isEmpty)
        {
            max = total_deadlift.max()!
        }
        return max
    }
    func showTotal() -> Double {
        return highestSquatAttempt() + highestBenchAttempt() + highestDeadliftAttempt()
    }
}
