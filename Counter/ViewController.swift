//
//  ViewController.swift
//  Counter
//
//  Created by Daria Zharko on 03.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var countLable: UILabel!
    @IBOutlet weak var delButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var countValue: Int = 0
    @IBAction func clickCountButton(_ sender: Any) {
        countValue += 1
        countLable.text = String(countValue)
        
    }
    
    @IBAction func clickMinusButton(_ sender: Any) {
        if(countValue != 0){
            countValue -= 1
            countLable.text = String(countValue)
        }else{
            countLable.text = "0"
        }
        
       
    }
    
    @IBAction func delButtonClick(_ sender: Any) {
        countValue = 0
        countLable.text = String(countValue)
    }
}

