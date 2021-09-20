//
//  ViewController.swift
//  Calculator
//
//  Created by mklotz on 20.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screenLabel: UILabel!
    let hearts = [
        "♡","🤍"]
    var indexCollor = 0
    var firstNumber: Double?
    var operation: String?
    var secondNumber = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToStart() {
        screenLabel.text = "0"
        firstNumber = nil
        operation = nil
        secondNumber = false
    }
    @IBAction func passedNumber(_ sender: UIButton) {
        guard screenLabel.text != "0" &&
        !secondNumber else {
            screenLabel.text = sender.titleLabel!.text!
            secondNumber = false
            return
        }
        if screenLabel.text!.count < 22 {
        screenLabel.text! += sender.titleLabel!.text!
        }
    }
    @IBAction func negative() {
        guard screenLabel.text != "0" &&
        !secondNumber else { return }
        if screenLabel.text!.first == "-" {
            screenLabel.text!.removeFirst()
        } else {
            screenLabel.text = "-" + screenLabel.text!
        }
    }
    @IBAction func fraction() {
        if !screenLabel.text!.contains(",") {
            screenLabel.text! += ","
        }
    }
    
    @IBAction func operations(_ sender: UIButton) {
        if firstNumber == nil {
            firstNumber = Double(screenLabel.text!.replacingOccurrences(of: ",", with: "."))
        } else {
            let secondNum = Double(screenLabel.text!.replacingOccurrences(of: ",", with: "."))!
            switch operation {
            case "/":
                firstNumber = firstNumber! / secondNum
            case "x":
                firstNumber = firstNumber! * secondNum
            case "+":
                firstNumber = firstNumber! + secondNum
            case "-":
                firstNumber = firstNumber! - secondNum
            default:
                break
            }
            screenLabel.text = String(format: "%g", firstNumber!).replacingOccurrences(of: ".", with: ",")
        }
        operation = sender.titleLabel!.text
        secondNumber = true
    }
    
    @IBAction func passedHeart(_ sender: UIButton) {
        indexCollor = indexCollor == hearts.count - 1 ? 0 : indexCollor + 1
        sender.setTitle(hearts[indexCollor], for: .normal)
    }
}
