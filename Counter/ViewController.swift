//
//  ViewController.swift
//  Counter
//
//  Created by Daria Zharko on 03.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countButtin: UIButton!
    
    @IBOutlet weak var countLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var countValue: Int = 0
    @IBAction func clickCountButton(_ sender: Any) {
        countValue += 1
        countLable.text = String(countValue)
        print(countValue)
    }
    

}

