//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by WEBSYSTEM-MAC39 on 2023/08/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        let name: String = textField.text!
        resultViewController.name = name != "" ? name : "ゲスト"
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        textField.text = nil
    }
}

