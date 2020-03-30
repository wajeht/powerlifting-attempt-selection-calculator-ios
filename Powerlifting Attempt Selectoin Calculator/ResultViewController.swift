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
        
    var wilksStuff = 0.0

    override func viewDidLoad() {
        
        
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
        
        
        
        
        let stap_txt_bn1_low = UITapGestureRecognizer(target: self,  action: #selector(tap_bn1_low))
        let ltap_txt_bn1_low = UILongPressGestureRecognizer(target: self,  action: #selector(untap_bn1_low))
        txt_bn1_low.addGestureRecognizer(stap_txt_bn1_low)
        txt_bn1_low.addGestureRecognizer(ltap_txt_bn1_low)

        
        let stap_txt_bn1_normal = UITapGestureRecognizer(target: self,  action: #selector(tap_bn1_normal))
        let ltap_txt_bn1_normal = UILongPressGestureRecognizer(target: self,  action: #selector(untap_bn1_normal))
        txt_bn1_normal.addGestureRecognizer(stap_txt_bn1_normal)
        txt_bn1_normal.addGestureRecognizer(ltap_txt_bn1_normal)
        
        let stap_txt_bn1_high = UITapGestureRecognizer(target: self,  action: #selector(tap_bn1_high))
        let ltap_txt_bn1_high = UILongPressGestureRecognizer(target: self,  action: #selector(untap_bn1_high))
        txt_bn1_high.addGestureRecognizer(stap_txt_bn1_high)
        txt_bn1_high.addGestureRecognizer(ltap_txt_bn1_high)
        
        
        
        
        let stap_txt_bn2_low = UITapGestureRecognizer(target: self,  action: #selector(tap_bn2_low))
        let ltap_txt_bn2_low = UILongPressGestureRecognizer(target: self,  action: #selector(untap_bn2_low))
        txt_bn2_low.addGestureRecognizer(stap_txt_bn2_low)
        txt_bn2_low.addGestureRecognizer(ltap_txt_bn2_low)

        
        let stap_txt_bn2_normal = UITapGestureRecognizer(target: self,  action: #selector(tap_bn2_normal))
        let ltap_txt_bn2_normal = UILongPressGestureRecognizer(target: self,  action: #selector(untap_bn2_normal))
        txt_bn2_normal.addGestureRecognizer(stap_txt_bn2_normal)
        txt_bn2_normal.addGestureRecognizer(ltap_txt_bn2_normal)
        
        let stap_txt_bn2_high = UITapGestureRecognizer(target: self,  action: #selector(tap_bn2_high))
        let ltap_txt_bn2_high = UILongPressGestureRecognizer(target: self,  action: #selector(untap_bn2_high))
        txt_bn2_high.addGestureRecognizer(stap_txt_bn2_high)
        txt_bn2_high.addGestureRecognizer(ltap_txt_bn2_high)
        
        
        
        let stap_txt_bn3_low = UITapGestureRecognizer(target: self,  action: #selector(tap_bn3_low))
        let ltap_txt_bn3_low = UILongPressGestureRecognizer(target: self,  action: #selector(untap_bn3_low))
        txt_bn3_low.addGestureRecognizer(stap_txt_bn3_low)
        txt_bn3_low.addGestureRecognizer(ltap_txt_bn3_low)

        
        let stap_txt_bn3_normal = UITapGestureRecognizer(target: self,  action: #selector(tap_bn3_normal))
        let ltap_txt_bn3_normal = UILongPressGestureRecognizer(target: self,  action: #selector(untap_bn3_normal))
        txt_bn3_normal.addGestureRecognizer(stap_txt_bn3_normal)
        txt_bn3_normal.addGestureRecognizer(ltap_txt_bn3_normal)
        
        let stap_txt_bn3_high = UITapGestureRecognizer(target: self,  action: #selector(tap_bn3_high))
        let ltap_txt_bn3_high = UILongPressGestureRecognizer(target: self,  action: #selector(untap_bn3_high))
        txt_bn3_high.addGestureRecognizer(stap_txt_bn3_high)
        txt_bn3_high.addGestureRecognizer(ltap_txt_bn3_high)
        
        
        let stap_txt_dl1_low = UITapGestureRecognizer(target: self,  action: #selector(tap_dl1_low))
        let ltap_txt_dl1_low = UILongPressGestureRecognizer(target: self,  action: #selector(untap_dl1_low))
        txt_dl1_low.addGestureRecognizer(stap_txt_dl1_low)
        txt_dl1_low.addGestureRecognizer(ltap_txt_dl1_low)

        
        let stap_txt_dl1_normal = UITapGestureRecognizer(target: self,  action: #selector(tap_dl1_normal))
        let ltap_txt_dl1_normal = UILongPressGestureRecognizer(target: self,  action: #selector(untap_dl1_normal))
        txt_dl1_normal.addGestureRecognizer(stap_txt_dl1_normal)
        txt_dl1_normal.addGestureRecognizer(ltap_txt_dl1_normal)
        
        let stap_txt_dl1_high = UITapGestureRecognizer(target: self,  action: #selector(tap_dl1_high))
        let ltap_txt_dl1_high = UILongPressGestureRecognizer(target: self,  action: #selector(untap_dl1_high))
        txt_dl1_high.addGestureRecognizer(stap_txt_dl1_high)
        txt_dl1_high.addGestureRecognizer(ltap_txt_dl1_high)
        
        
        
        
        let stap_txt_dl2_low = UITapGestureRecognizer(target: self,  action: #selector(tap_dl2_low))
        let ltap_txt_dl2_low = UILongPressGestureRecognizer(target: self,  action: #selector(untap_dl2_low))
        txt_dl2_low.addGestureRecognizer(stap_txt_dl2_low)
        txt_dl2_low.addGestureRecognizer(ltap_txt_dl2_low)

        
        let stap_txt_dl2_normal = UITapGestureRecognizer(target: self,  action: #selector(tap_dl2_normal))
        let ltap_txt_dl2_normal = UILongPressGestureRecognizer(target: self,  action: #selector(untap_dl2_normal))
        txt_dl2_normal.addGestureRecognizer(stap_txt_dl2_normal)
        txt_dl2_normal.addGestureRecognizer(ltap_txt_dl2_normal)
        
        let stap_txt_dl2_high = UITapGestureRecognizer(target: self,  action: #selector(tap_dl2_high))
        let ltap_txt_dl2_high = UILongPressGestureRecognizer(target: self,  action: #selector(untap_dl2_high))
        txt_dl2_high.addGestureRecognizer(stap_txt_dl2_high)
        txt_dl2_high.addGestureRecognizer(ltap_txt_dl2_high)
        
        
        
        let stap_txt_dl3_low = UITapGestureRecognizer(target: self,  action: #selector(tap_dl3_low))
        let ltap_txt_dl3_low = UILongPressGestureRecognizer(target: self,  action: #selector(untap_dl3_low))
        txt_dl3_low.addGestureRecognizer(stap_txt_dl3_low)
        txt_dl3_low.addGestureRecognizer(ltap_txt_dl3_low)

        
        let stap_txt_dl3_normal = UITapGestureRecognizer(target: self,  action: #selector(tap_dl3_normal))
        let ltap_txt_dl3_normal = UILongPressGestureRecognizer(target: self,  action: #selector(untap_dl3_normal))
        txt_dl3_normal.addGestureRecognizer(stap_txt_dl3_normal)
        txt_dl3_normal.addGestureRecognizer(ltap_txt_dl3_normal)
        
        let stap_txt_dl3_high = UITapGestureRecognizer(target: self,  action: #selector(tap_dl3_high))
        let ltap_txt_dl3_high = UILongPressGestureRecognizer(target: self,  action: #selector(untap_dl3_high))
        txt_dl3_high.addGestureRecognizer(stap_txt_dl3_high)
        txt_dl3_high.addGestureRecognizer(ltap_txt_dl3_high)
        

        
    }
    
    func wilksTotal() -> Double {
        return wilksStuff  + showTotal()
    }
        
    @objc func tap_sq1_low(){
        total_squat.append((txt_sq1_low.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())
        txt_sq1_low.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_sq1_low.layer.cornerRadius = 10
        txt_sq1_low.clipsToBounds = true
        txt_sq1_low.textColor = UIColor.white
        
    }
    
    @objc func untap_sq1_low(){
        while let certainIndex = total_squat.index(of: (txt_sq1_low.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())
        txt_sq1_low.backgroundColor = UIColor.white
        txt_sq1_low.layer.cornerRadius = 10
        txt_sq1_low.clipsToBounds = true
        txt_sq1_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_sq1_normal(){
        total_squat.append((txt_sq1_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_sq1_normal.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_sq1_normal.layer.cornerRadius = 10
        txt_sq1_normal.clipsToBounds = true
        txt_sq1_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_sq1_normal(){
        while let certainIndex = total_squat.index(of: (txt_sq1_normal.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_sq1_normal.backgroundColor = UIColor.white
        txt_sq1_normal.layer.cornerRadius = 10
        txt_sq1_normal.clipsToBounds = true
        txt_sq1_normal.textColor = UIColor.black

    }
    
    @objc func tap_sq1_high(){
        total_squat.append((txt_sq1_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_sq1_high.backgroundColor = hexStringToUIColor(hex: "#CE4043")
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
        txt_Wilks.text = String(wilksTotal())

        txt_sq2_low.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_sq2_low.layer.cornerRadius = 10
        txt_sq2_low.clipsToBounds = true
        txt_sq2_low.textColor = UIColor.white
        
    }
    
    @objc func untap_sq2_low(){
        while let certainIndex = total_squat.index(of: (txt_sq2_low.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_sq2_low.backgroundColor = UIColor.white
        txt_sq2_low.layer.cornerRadius = 10
        txt_sq2_low.clipsToBounds = true
        txt_sq2_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_sq2_normal(){
        total_squat.append((txt_sq2_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_sq2_normal.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_sq2_normal.layer.cornerRadius = 10
        txt_sq2_normal.clipsToBounds = true
        txt_sq2_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_sq2_normal(){
        while let certainIndex = total_squat.index(of: (txt_sq2_normal.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_sq2_normal.backgroundColor = UIColor.white
        txt_sq2_normal.layer.cornerRadius = 10
        txt_sq2_normal.clipsToBounds = true
        txt_sq2_normal.textColor = UIColor.black

    }
    
    @objc func tap_sq2_high(){
        total_squat.append((txt_sq2_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_sq2_high.backgroundColor = hexStringToUIColor(hex: "#CE4043")
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
        txt_Wilks.text = String(wilksTotal())

        txt_sq3_low.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_sq3_low.layer.cornerRadius = 10
        txt_sq3_low.clipsToBounds = true
        txt_sq3_low.textColor = UIColor.white
        
    }
    
    @objc func untap_sq3_low(){
        while let certainIndex = total_squat.index(of: (txt_sq3_low.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_sq3_low.backgroundColor = UIColor.white
        txt_sq3_low.layer.cornerRadius = 10
        txt_sq3_low.clipsToBounds = true
        txt_sq3_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_sq3_normal(){
        total_squat.append((txt_sq3_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_sq3_normal.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_sq3_normal.layer.cornerRadius = 10
        txt_sq3_normal.clipsToBounds = true
        txt_sq3_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_sq3_normal(){
        while let certainIndex = total_squat.index(of: (txt_sq3_normal.text! as NSString).doubleValue){
            total_squat.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_sq3_normal.backgroundColor = UIColor.white
        txt_sq3_normal.layer.cornerRadius = 10
        txt_sq3_normal.clipsToBounds = true
        txt_sq3_normal.textColor = UIColor.black

    }
    
    @objc func tap_sq3_high(){
        total_squat.append((txt_sq3_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_sq3_high.backgroundColor = hexStringToUIColor(hex: "#CE4043")
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
    
    
    @objc func tap_bn1_low(){
        total_bench.append((txt_bn1_low.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())
        txt_bn1_low.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_bn1_low.layer.cornerRadius = 10
        txt_bn1_low.clipsToBounds = true
        txt_bn1_low.textColor = UIColor.white
        
    }
    
    @objc func untap_bn1_low(){
        while let certainIndex = total_bench.index(of: (txt_bn1_low.text! as NSString).doubleValue){
            total_bench.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())
        txt_bn1_low.backgroundColor = UIColor.white
        txt_bn1_low.layer.cornerRadius = 10
        txt_bn1_low.clipsToBounds = true
        txt_bn1_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_bn1_normal(){
        total_bench.append((txt_bn1_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn1_normal.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_bn1_normal.layer.cornerRadius = 10
        txt_bn1_normal.clipsToBounds = true
        txt_bn1_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_bn1_normal(){
        while let certainIndex = total_bench.index(of: (txt_bn1_normal.text! as NSString).doubleValue){
            total_bench.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn1_normal.backgroundColor = UIColor.white
        txt_bn1_normal.layer.cornerRadius = 10
        txt_bn1_normal.clipsToBounds = true
        txt_bn1_normal.textColor = UIColor.black

    }
    
    @objc func tap_bn1_high(){
        total_bench.append((txt_bn1_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn1_high.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_bn1_high.layer.cornerRadius = 10
        txt_bn1_high.clipsToBounds = true
        txt_bn1_high.textColor = UIColor.white
        
    }
    
    @objc func untap_bn1_high(){
        while let certainIndex = total_bench.index(of: (txt_bn1_high.text! as NSString).doubleValue){
            total_bench.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_bn1_high.backgroundColor = UIColor.white
        txt_bn1_high.layer.cornerRadius = 10
        txt_bn1_high.clipsToBounds = true
        txt_bn1_high.textColor = UIColor.black

    }
    
    
    @objc func tap_bn2_low(){
        total_bench.append((txt_bn2_low.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn2_low.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_bn2_low.layer.cornerRadius = 10
        txt_bn2_low.clipsToBounds = true
        txt_bn2_low.textColor = UIColor.white
        
    }
    
    @objc func untap_bn2_low(){
        while let certainIndex = total_bench.index(of: (txt_bn2_low.text! as NSString).doubleValue){
            total_bench.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn2_low.backgroundColor = UIColor.white
        txt_bn2_low.layer.cornerRadius = 10
        txt_bn2_low.clipsToBounds = true
        txt_bn2_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_bn2_normal(){
        total_bench.append((txt_bn2_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn2_normal.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_bn2_normal.layer.cornerRadius = 10
        txt_bn2_normal.clipsToBounds = true
        txt_bn2_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_bn2_normal(){
        while let certainIndex = total_bench.index(of: (txt_bn2_normal.text! as NSString).doubleValue){
            total_bench.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn2_normal.backgroundColor = UIColor.white
        txt_bn2_normal.layer.cornerRadius = 10
        txt_bn2_normal.clipsToBounds = true
        txt_bn2_normal.textColor = UIColor.black

    }
    
    @objc func tap_bn2_high(){
        total_bench.append((txt_bn2_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn2_high.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_bn2_high.layer.cornerRadius = 10
        txt_bn2_high.clipsToBounds = true
        txt_bn2_high.textColor = UIColor.white
        
    }
    
    @objc func untap_bn2_high(){
        while let certainIndex = total_bench.index(of: (txt_bn2_high.text! as NSString).doubleValue){
            total_bench.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_bn2_high.backgroundColor = UIColor.white
        txt_bn2_high.layer.cornerRadius = 10
        txt_bn2_high.clipsToBounds = true
        txt_bn2_high.textColor = UIColor.black

    }
    
    
    

    @objc func tap_bn3_low(){
        total_bench.append((txt_bn3_low.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn3_low.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_bn3_low.layer.cornerRadius = 10
        txt_bn3_low.clipsToBounds = true
        txt_bn3_low.textColor = UIColor.white
        
    }
    
    @objc func untap_bn3_low(){
        while let certainIndex = total_bench.index(of: (txt_bn3_low.text! as NSString).doubleValue){
            total_bench.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn3_low.backgroundColor = UIColor.white
        txt_bn3_low.layer.cornerRadius = 10
        txt_bn3_low.clipsToBounds = true
        txt_bn3_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_bn3_normal(){
        total_bench.append((txt_bn3_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn3_normal.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_bn3_normal.layer.cornerRadius = 10
        txt_bn3_normal.clipsToBounds = true
        txt_bn3_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_bn3_normal(){
        while let certainIndex = total_bench.index(of: (txt_bn3_normal.text! as NSString).doubleValue){
            total_bench.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn3_normal.backgroundColor = UIColor.white
        txt_bn3_normal.layer.cornerRadius = 10
        txt_bn3_normal.clipsToBounds = true
        txt_bn3_normal.textColor = UIColor.black

    }
    
    @objc func tap_bn3_high(){
        total_bench.append((txt_bn3_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_bn3_high.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_bn3_high.layer.cornerRadius = 10
        txt_bn3_high.clipsToBounds = true
        txt_bn3_high.textColor = UIColor.white
        
    }
    
    @objc func untap_bn3_high(){
        while let certainIndex = total_bench.index(of: (txt_bn3_high.text! as NSString).doubleValue){
            total_bench.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_bn3_high.backgroundColor = UIColor.white
        txt_bn3_high.layer.cornerRadius = 10
        txt_bn3_high.clipsToBounds = true
        txt_bn3_high.textColor = UIColor.black

    }
    
    @objc func tap_dl1_low(){
        total_deadlift.append((txt_dl1_low.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())
        txt_dl1_low.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_dl1_low.layer.cornerRadius = 10
        txt_dl1_low.clipsToBounds = true
        txt_dl1_low.textColor = UIColor.white
        
    }
    
    @objc func untap_dl1_low(){
        while let certainIndex = total_deadlift.index(of: (txt_dl1_low.text! as NSString).doubleValue){
            total_deadlift.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())
        txt_dl1_low.backgroundColor = UIColor.white
        txt_dl1_low.layer.cornerRadius = 10
        txt_dl1_low.clipsToBounds = true
        txt_dl1_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_dl1_normal(){
        total_deadlift.append((txt_dl1_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl1_normal.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_dl1_normal.layer.cornerRadius = 10
        txt_dl1_normal.clipsToBounds = true
        txt_dl1_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_dl1_normal(){
        while let certainIndex = total_deadlift.index(of: (txt_dl1_normal.text! as NSString).doubleValue){
            total_deadlift.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl1_normal.backgroundColor = UIColor.white
        txt_dl1_normal.layer.cornerRadius = 10
        txt_dl1_normal.clipsToBounds = true
        txt_dl1_normal.textColor = UIColor.black

    }
    
    @objc func tap_dl1_high(){
        total_deadlift.append((txt_dl1_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl1_high.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_dl1_high.layer.cornerRadius = 10
        txt_dl1_high.clipsToBounds = true
        txt_dl1_high.textColor = UIColor.white
        
    }
    
    @objc func untap_dl1_high(){
        while let certainIndex = total_deadlift.index(of: (txt_dl1_high.text! as NSString).doubleValue){
            total_deadlift.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_dl1_high.backgroundColor = UIColor.white
        txt_dl1_high.layer.cornerRadius = 10
        txt_dl1_high.clipsToBounds = true
        txt_dl1_high.textColor = UIColor.black

    }
    
    
    @objc func tap_dl2_low(){
        total_deadlift.append((txt_dl2_low.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl2_low.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_dl2_low.layer.cornerRadius = 10
        txt_dl2_low.clipsToBounds = true
        txt_dl2_low.textColor = UIColor.white
        
    }
    
    @objc func untap_dl2_low(){
        while let certainIndex = total_deadlift.index(of: (txt_dl2_low.text! as NSString).doubleValue){
            total_deadlift.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl2_low.backgroundColor = UIColor.white
        txt_dl2_low.layer.cornerRadius = 10
        txt_dl2_low.clipsToBounds = true
        txt_dl2_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_dl2_normal(){
        total_deadlift.append((txt_dl2_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl2_normal.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_dl2_normal.layer.cornerRadius = 10
        txt_dl2_normal.clipsToBounds = true
        txt_dl2_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_dl2_normal(){
        while let certainIndex = total_deadlift.index(of: (txt_dl2_normal.text! as NSString).doubleValue){
            total_deadlift.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl2_normal.backgroundColor = UIColor.white
        txt_dl2_normal.layer.cornerRadius = 10
        txt_dl2_normal.clipsToBounds = true
        txt_dl2_normal.textColor = UIColor.black

    }
    
    @objc func tap_dl2_high(){
        total_deadlift.append((txt_dl2_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl2_high.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_dl2_high.layer.cornerRadius = 10
        txt_dl2_high.clipsToBounds = true
        txt_dl2_high.textColor = UIColor.white
        
    }
    
    @objc func untap_dl2_high(){
        while let certainIndex = total_deadlift.index(of: (txt_dl2_high.text! as NSString).doubleValue){
            total_deadlift.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_dl2_high.backgroundColor = UIColor.white
        txt_dl2_high.layer.cornerRadius = 10
        txt_dl2_high.clipsToBounds = true
        txt_dl2_high.textColor = UIColor.black

    }
    
    
    

    @objc func tap_dl3_low(){
        total_deadlift.append((txt_dl3_low.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl3_low.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_dl3_low.layer.cornerRadius = 10
        txt_dl3_low.clipsToBounds = true
        txt_dl3_low.textColor = UIColor.white
        
    }
    
    @objc func untap_dl3_low(){
        while let certainIndex = total_deadlift.index(of: (txt_dl3_low.text! as NSString).doubleValue){
            total_deadlift.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl3_low.backgroundColor = UIColor.white
        txt_dl3_low.layer.cornerRadius = 10
        txt_dl3_low.clipsToBounds = true
        txt_dl3_low.textColor = UIColor.black

    }
    
    
    
    @objc func tap_dl3_normal(){
        total_deadlift.append((txt_dl3_normal.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl3_normal.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_dl3_normal.layer.cornerRadius = 10
        txt_dl3_normal.clipsToBounds = true
        txt_dl3_normal.textColor = UIColor.white
        
    }
    
    @objc func untap_dl3_normal(){
        while let certainIndex = total_deadlift.index(of: (txt_dl3_normal.text! as NSString).doubleValue){
            total_deadlift.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl3_normal.backgroundColor = UIColor.white
        txt_dl3_normal.layer.cornerRadius = 10
        txt_dl3_normal.clipsToBounds = true
        txt_dl3_normal.textColor = UIColor.black

    }
    
    @objc func tap_dl3_high(){
        total_deadlift.append((txt_dl3_high.text! as NSString).doubleValue)
        txt_Total.text = String(showTotal())
        txt_Wilks.text = String(wilksTotal())

        txt_dl3_high.backgroundColor = hexStringToUIColor(hex: "#CE4043")
        txt_dl3_high.layer.cornerRadius = 10
        txt_dl3_high.clipsToBounds = true
        txt_dl3_high.textColor = UIColor.white
        
    }
    
    @objc func untap_dl3_high(){
        while let certainIndex = total_deadlift.index(of: (txt_dl3_high.text! as NSString).doubleValue){
            total_deadlift.remove(at: certainIndex)
        }
        txt_Total.text = String(showTotal())
        txt_dl3_high.backgroundColor = UIColor.white
        txt_dl3_high.layer.cornerRadius = 10
        txt_dl3_high.clipsToBounds = true
        txt_dl3_high.textColor = UIColor.black

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
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
