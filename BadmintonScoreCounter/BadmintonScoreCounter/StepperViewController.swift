
//
//  StepperViewController.swift
//  BadmintonScoreCounter
//
//  Created by Muhammad Hilmy Fauzi on 3/12/17.
//  Copyright © 2017 Hilmy Corp. All rights reserved.
//

import UIKit

class StepperViewController: UIViewController {

    
    @IBOutlet weak var labelDecision: UILabel!
    @IBOutlet weak var steppersatu: UIStepper!
    @IBOutlet weak var stepperdua: UIStepper!
    @IBAction func btnStepperSatu(_ sender: UIStepper) {
        hasilSatu.text = Int(sender.value).description
    }
    @IBAction func btnStepperDua(_ sender: UIStepper) {
        hasilDua.text = Int(sender.value).description

    }
    
    @IBOutlet weak var hasilSatu: UILabel!
    @IBOutlet weak var hasilDua: UILabel!
    @IBOutlet weak var labelSatu: UILabel!
    @IBOutlet weak var labelDua: UILabel!
    var first = ""
    var second = ""
    
    
    override func viewDidLoad() {
        
        if (hasilSatu.text! == "21") {
            labelDecision.text = first + "Is Win"
        }else if (hasilDua.text! == "21") {
            labelDecision.text = second + "Is Win"
        }
        super.viewDidLoad()

        
        labelSatu.text = first
        labelDua.text = second

        steppersatu.wraps = true
        steppersatu.autorepeat = true
        steppersatu.maximumValue = 21
        
        stepperdua.wraps = true
        stepperdua.autorepeat = true
        stepperdua.maximumValue = 21
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

}
