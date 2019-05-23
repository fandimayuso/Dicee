//
//  ViewController.swift
//  Dicee
//
//  Created by Muhammat Fandi Mayuso on 28/10/18.
//  Copyright © 2018 Muhammat Fandi Mayuso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceViewImage1: UIImageView!
    @IBOutlet weak var diceViewImage2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        print(randomDiceIndex1)
        
        diceViewImage1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceViewImage2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

