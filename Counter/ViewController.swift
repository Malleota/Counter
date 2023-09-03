//
//  ViewController.swift
//  Counter
//
//  Created by Daria Zharko on 03.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var historyText: UITextField!
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var historyView: UITextView!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var countLable: UILabel!
    @IBOutlet weak var delButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        historyView.isEditable = false
       
    }
    var countValue: Int = 0
    
    @IBAction func clickCountButton(_ sender: Any) {
        countValue += 1
        countLable.text = String(countValue)
        historyView.text = "\(Date.now.formatted(date: .numeric, time: .shortened)): значение изменено на +1 \n" + historyView.text
    }
    
    @IBAction func clickMinusButton(_ sender: Any) {
        if(countValue != 0){
            countValue -= 1
            countLable.text = String(countValue)
            historyView.text = "\(Date.now.formatted(date: .numeric, time: .shortened)): значение изменено на -1\n" + historyView.text
        }else{
            countLable.text = "0"
            historyView.text = "\(Date.now.formatted(date: .numeric, time: .shortened)): попытка уменьшить значение счётчика ниже 0\n" + historyView.text
        }
        
       
    }
    
    @IBAction func delButtonClick(_ sender: Any) {
        countValue = 0
        countLable.text = String(countValue)
        historyView.text = "\(Date.now.formatted(date: .numeric, time: .shortened)): значение сброшено \n" + historyView.text
    }
}

