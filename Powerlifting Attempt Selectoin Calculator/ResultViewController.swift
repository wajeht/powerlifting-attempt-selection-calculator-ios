//
//  ResultViewController.swift
//  Powerlifting Attempt Selectoin Calculator
//
//  Created by Ko Nyein on 3/26/20.
//  Copyright © 2020 Kyaw Nyein. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    
    @IBOutlet weak var txt_Wilks: UILabel!
    @IBOutlet weak var txt_Total: UILabel!
    
    var wilks = String()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        txt_Wilks.text = wilks

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
