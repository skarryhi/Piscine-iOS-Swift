//
//  ViewController.swift
//  Hello World
//
//  Created by Анна Заблуда on 20.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func clickedButton(_ sender: Any) {
        if label.text == "" {
            label.text = "Hello World !"
        } else {
            label.text = ""
        }
    }
    
}

