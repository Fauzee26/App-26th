//
//  ViewController.swift
//  BadmintonScoreCounter
//
//  Created by Muhammad Hilmy Fauzi on 3/12/17.
//  Copyright © 2017 Hilmy Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etFirst: UITextField!
    @IBOutlet weak var etSecond: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //check what segue with name passData is available or not
        if(segue.identifier == "passData"){
            //declare sendData as destination segue with name view controller : GetDataViewController
            let sendData = segue.destination as! StepperViewController
            
            //put the data that we want to send
            //send username data
            sendData.first = etFirst.text!
            //send email data
            sendData.second = etSecond.text!
 }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

