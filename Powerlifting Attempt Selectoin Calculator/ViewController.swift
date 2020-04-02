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
    
    @IBOutlet weak var txt_bodyWeight: UITextField!
    
    @IBOutlet weak var txt_sqRep: UITextField!
    @IBOutlet weak var txt_sqWeight: UITextField!
    @IBOutlet weak var txt_sqRpe: UITextField!
    
    @IBOutlet weak var txt_bnRep: UITextField!
    @IBOutlet weak var txt_bnWeight: UITextField!
    @IBOutlet weak var txt_bnRpe: UITextField!
    
    @IBOutlet weak var txt_dlRep: UITextField!
    @IBOutlet weak var txt_dlWeight: UITextField!
    @IBOutlet weak var txt_dlRpe: UITextField!
    
    var sqRep = 0
    var sqWeight = 0
    var sqRpe = 0
    var sqMax = 0
    
    var bnRep = 0
    var bnWeight = 0
    var bnRpe = 0
    var bnMax = 0
    
    var dlRep = 0
    var dlWeight = 0
    var dlRpe = 0
    var dlMax = 0
    
    var sq_firstAttempt = 0
    var sq_secondAttempt = 0
    var sq_thirdAttempt = 0
    
    var bn_firstAttempt = 0
    var bn_secondAttempt = 0
    var bn_thirdAttempt = 0
    
    var dl_firstAttempt = 0
    var dl_secondAttempt = 0
    var dl_thirdAttempt = 0
    
    var bodyWeight = 0.0
    
    var autoGender = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblCalculate.layer.cornerRadius = 10
        self.hideKeyboardWhenTappedAround()
        
        lblMale.isSelected = autoGender
        
        // shift keyboard upword on textviw starts
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        }

    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    // shift keyboard upword on textviw ends
    
    @IBAction func aboutAlert(_ sender: Any) {
        
          if let url = NSURL(string: ("http://www.paypal.me/akonyein")) {
            let alert = UIAlertController(title: "", message: "This app is free forever, but it still cost effort to maintain it on AppStore. Want to buy a cup of coffee?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "No", style: .default, handler: { (action) in
               }))
            alert.addAction(UIAlertAction(title: "Sure!", style: .default, handler: { (action) in
                UIApplication.shared.openURL(url as URL)
              }))
                              
            self.present(alert, animated: true, completion: nil)
          }

    }
    
    @IBAction func btnMale(_ sender: Any) {
        
        if lblFemale.isSelected {
            lblFemale.isSelected = false
            lblMale.isSelected = true
        } else {
            lblMale.isSelected = true
        }
    }

    @IBAction func btnFemale(_ sender: Any) {
        if lblMale.isSelected {
            lblMale.isSelected = false
            lblFemale.isSelected = true
        } else {
            lblFemale.isSelected = true
        }
    }
    
    @IBAction func btnCalculate(_ sender: Any) {
        
        if txt_bodyWeight.text == "" ||
            txt_bodyWeight.text == "" ||
            txt_sqRep.text == "" ||
            txt_sqWeight.text == "" ||
            txt_sqRpe.text == "" ||
            txt_bnRep.text == "" ||
            txt_bnWeight.text == "" ||
            txt_bnRpe.text == "" ||
            txt_dlRep.text == "" ||
            txt_dlWeight.text == "" ||
            txt_dlRpe.text == ""
            {
            
            let alert = UIAlertController(title: "", message: "Please provide all input fields!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("Ok", comment: "Default action"), style: .default, handler: { _ in }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        sqRep = Int(txt_sqRep.text ?? "") ?? 0
        sqWeight = Int(txt_sqWeight.text ?? "") ?? 0
        sqRpe = Int(txt_sqRpe.text ?? "") ?? 0
        sqMax = Int(oneRepMax(rep: sqRep, weight: sqWeight, rpe: sqRpe))
        sq_firstAttempt = Int(Double( firstAttempt(oneRepMax: Double(sqMax))))
        sq_secondAttempt = Int(Double( secondAttempt(oneRepMax: Double(sqMax))))
        sq_thirdAttempt = Int(Double( thirdAttempt(oneRepMax: Double(sqMax))))
        
        bnRep = Int(txt_bnRep.text ?? "") ?? 0
        bnWeight = Int(txt_bnWeight.text ?? "") ?? 0
        bnRpe = Int(txt_bnRpe.text ?? "") ?? 0
        bnMax = Int(oneRepMax(rep: bnRep, weight: bnWeight, rpe: bnRpe))
        bn_firstAttempt = Int(Double( firstAttempt(oneRepMax: Double(bnMax))))
        bn_secondAttempt = Int(Double( secondAttempt(oneRepMax: Double(bnMax))))
        bn_thirdAttempt = Int(Double( thirdAttempt(oneRepMax: Double(bnMax))))
        
        dlRep = Int(txt_dlRep.text ?? "") ?? 0
        dlWeight = Int(txt_dlWeight.text ?? "") ?? 0
        dlRpe = Int(txt_dlRpe.text ?? "") ?? 0
        dlMax = Int(oneRepMax(rep: dlRep, weight: dlWeight, rpe: dlRpe))
        dl_firstAttempt = Int(Double( firstAttempt(oneRepMax: Double(dlMax))))
        dl_secondAttempt = Int(Double( secondAttempt(oneRepMax: Double(dlMax))))
        dl_thirdAttempt = Int(Double( thirdAttempt(oneRepMax: Double(dlMax))))
        
        bodyWeight = Double(txt_bodyWeight.text ?? "") ?? 0.0
        
        
        if segue.identifier == "segue"{
            let rvc = segue.destination as! ResultViewController
            
            if lblMale.isSelected {
                rvc.wilksStuff = wilks(bodyweight: bodyWeight)
                rvc.gender = "Male"
            } else if lblFemale.isSelected{
                rvc.wilksStuff = wilks(bodyweight: bodyWeight)
                rvc.gender = "Female"
            }
            
            rvc.bodyWeight = String(txt_bodyWeight.text ?? "")
            
            
            rvc.sqOneRepMax = "SQUAT e1RM: " + String(sqMax)
            rvc.bnOneRepMax = "BENCH e1RM: " + String(bnMax)
            rvc.dlOneRepMax = "DEADLIFT e1RM: " + String(dlMax)
            
            rvc.sq1_low = String((sq_firstAttempt - (Int(Double(sq_firstAttempt) * Double(0.01)))))
            rvc.sq1_normal = String(sq_firstAttempt)
            rvc.sq1_high = String((sq_firstAttempt + (Int(Double(sq_firstAttempt) * Double(0.02)))))
            
            rvc.sq2_low = String((sq_secondAttempt - (Int(Double(sq_secondAttempt) * Double(0.01)))))
            rvc.sq2_normal = String(sq_secondAttempt)
            rvc.sq2_high = String((sq_secondAttempt + (Int(Double(sq_secondAttempt) * Double(0.02)))))

            rvc.sq3_low = String((sq_thirdAttempt - (Int(Double(sq_thirdAttempt) * Double(0.01)))))
            rvc.sq3_normal = String(sq_thirdAttempt)
            rvc.sq3_high = String((sq_thirdAttempt + (Int(Double(sq_thirdAttempt) * Double(0.02)))))
            
            

            rvc.bn1_low = String((bn_firstAttempt - (Int(Double(bn_firstAttempt) * Double(0.01)))))
            rvc.bn1_normal = String(bn_firstAttempt)
            rvc.bn1_high = String((bn_firstAttempt + (Int(Double(bn_firstAttempt) * Double(0.02)))))
            
            rvc.bn2_low = String((bn_secondAttempt - (Int(Double(bn_secondAttempt) * Double(0.01)))))
            rvc.bn2_normal = String(bn_secondAttempt)
            rvc.bn2_high = String((bn_secondAttempt + (Int(Double(bn_secondAttempt) * Double(0.02)))))
            
            rvc.bn3_low = String((bn_thirdAttempt - (Int(Double(bn_thirdAttempt) * Double(0.01)))))
            rvc.bn3_normal = String(bn_thirdAttempt)
            rvc.bn3_high = String((bn_thirdAttempt + (Int(Double(bn_thirdAttempt) * Double(0.02)))))
    
            
    
            rvc.dl1_low = String((dl_firstAttempt - (Int(Double(dl_firstAttempt) * Double(0.01)))))
            rvc.dl1_normal = String(dl_firstAttempt)
            rvc.dl1_high = String((dl_firstAttempt + (Int(Double(dl_firstAttempt) * Double(0.02)))))
        
            rvc.dl2_low = String((dl_secondAttempt - (Int(Double(dl_secondAttempt) * Double(0.01)))))
            rvc.dl2_normal = String(dl_secondAttempt)
            rvc.dl2_high = String((dl_secondAttempt + (Int(Double(dl_secondAttempt) * Double(0.02)))))
            
            rvc.dl3_low = String((dl_thirdAttempt - (Int(Double(dl_thirdAttempt) * Double(0.01)))))
            rvc.dl3_normal = String(dl_thirdAttempt)
            rvc.dl3_high = String((dl_thirdAttempt + (Int(Double(dl_thirdAttempt) * Double(0.02)))))
            
            
        }
    }
    
    func wilks(bodyweight: Double) -> Double
    {
        let  bw = (bodyweight / 2.2);

        var  result = 0.0;

        if (lblMale.isSelected)
        {
            result = 500 /
                (
                    ((-216.0475144)) +
                    ((16.2606339)*(bw)) -
                    ((0.002388645)*(pow(bw,2))) -
                    ((0.00113732)*(pow(bw,3))) +
                    ((0.00000701863)*(pow(bw,4))) -
                    ((0.00000001291)*(pow(bw,5)))
                );

        }
        else if (lblFemale.isSelected)
        {
            result = 500 /
                (
                    ((594.31747775582)) -
                    ((27.23842536447)*(bw)) +
                    ((0.82112226871)*(pow(bw,2))) -
                    ((0.00930733913)*(pow(bw,3))) +
                    ((0.00004731582)*(pow(bw,4))) -
                    ((0.00000009054)*(pow(bw,5)))
                );
        }
        return result;
    }
    
    
    
    // caltulations
    func firstAttempt(oneRepMax: Double) -> Double {
        return (oneRepMax * 0.91)
    }
    
    func secondAttempt(oneRepMax: Double) -> Double {
        return (oneRepMax * 0.96)
    }
    
    func thirdAttempt(oneRepMax: Double) -> Double {
        return (oneRepMax)
    }
    
    func oneRepMax(rep: Int, weight: Int, rpe: Int) -> Double {
        

        return Double(weight)
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

// hide keyboard on tap anywhere
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

