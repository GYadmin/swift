//
//  ViewController.swift
//  Swift2048
//
//  Created by IBMer on 2/3/15.
//  Copyright (c) 2015 IBMer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startGame(sender:UIButton)
    {
        let alertView = UIAlertView()
        alertView.title = "Start! "
        alertView.message = ""
    }
}

