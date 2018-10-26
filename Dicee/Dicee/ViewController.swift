//
//  ViewController.swift
//  Dicee
//
//  Created by David E Bratton on 10/26/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var diceValue1:Int = 0
    var diceValue2:Int = 0
    var diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var imageViewDice1: UIImageView!
    @IBOutlet weak var imageViewDice2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateDice()
    }
    
    func generateDice() {
        diceValue1 = Int.random(in: 0 ... 5)
        diceValue2 = Int.random(in: 0 ... 5)
        
        print("Dice1: \(diceValue1), Dice2: \(diceValue2)")
        // Create an array at top to hold the image names and then pass the random index
        imageViewDice1.image = UIImage(named: diceArray[diceValue1])
        imageViewDice2.image = UIImage(named: diceArray[diceValue2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateDice()
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        generateDice()
        
        // Another way to do it, obvioiusly not the smart way
//        if diceValue1 == 0 {
//            imageViewDice1.image = UIImage(named: "dice1.png")
//        } else if diceValue1 == 1 {
//            imageViewDice1.image = UIImage(named: "dice2.png")
//        } else if diceValue1 == 2 {
//            imageViewDice1.image = UIImage(named: "dice3.png")
//        } else if diceValue1 == 3 {
//            imageViewDice1.image = UIImage(named: "dice4.png")
//        } else if diceValue1 == 4 {
//            imageViewDice1.image = UIImage(named: "dice5.png")
//        } else {
//            imageViewDice1.image = UIImage(named: "dice6.png")
//        }
//
//        if diceValue2 == 0 {
//            imageViewDice2.image = UIImage(named: "dice1.png")
//        } else if diceValue2 == 1 {
//            imageViewDice2.image = UIImage(named: "dice2.png")
//        } else if diceValue2 == 2 {
//            imageViewDice2.image = UIImage(named: "dice3.png")
//        } else if diceValue2 == 3 {
//            imageViewDice2.image = UIImage(named: "dice4.png")
//        } else if diceValue2 == 4 {
//            imageViewDice2.image = UIImage(named: "dice5.png")
//        } else {
//            imageViewDice2.image = UIImage(named: "dice6.png")
//        }
    }
    
}

