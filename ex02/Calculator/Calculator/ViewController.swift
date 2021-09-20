//
//  ViewController.swift
//  Calculator
//
//  Created by mklotz on 20.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screenLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func passedNumber(_ sender: UIButton) {
        print("Pressed button \(sender.titleLabel!.text!)")
        guard screenLabel.text != "0" else {
            screenLabel.text = sender.titleLabel!.text!
            return
        }
        screenLabel.text! += sender.titleLabel!.text!
    }
    @IBAction func goToStart() {
        screenLabel.text = "0"
        print("Pressed batton AC")
    }
    
}
