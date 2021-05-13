//
//  ViewController.swift
//  Homework3
//
//  Created by Владислав Вишняков on 06.03.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var secondNumberPlace: UITextField!
    @IBOutlet weak var operatorPlace: UITextField!
    @IBOutlet weak var firstNumberPlace: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        secondNumberPlace.delegate = self
        firstNumberPlace.delegate = self
        operatorPlace.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButton(_ sender: Any) {
        let plus = "+"
        let minus = "-"
        let delete = "/"
        let multiply = "*"
        let stepen = "^"
        var result = 0
        let number1 = Int(firstNumberPlace.text ?? "")!
        let number2 = Int(secondNumberPlace.text ?? "")!
        
        switch operatorPlace.text {
        case plus:
            result = number1 + number2
            label.text = "\(result)"
        case minus:
            result = number1 - number2
            label.text = "\(result)"
        case delete:
            result = number1 / number2
            label.text = "\(result)"
        case multiply:
            result = number1 * number2
            label.text = "\(result)"
        case stepen:
            func pow(xx: Int, yy: Int) -> Int {
                var results: Int = 1
                for _ in 0..<yy {
                    results &*= xx
                }
                return results
            }
            label.text = "\(pow(xx: number1, yy: number2))"
            
            
        case .none:
            label.text = "Ошибка полей"
        case .some(_):
            label.text = "Ошибка полей"
        }
        
    }
   


}

