//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUIChanges();
    }
    
    
    func loadUIChanges(){
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix");
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceTwo");
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let dices = ["Dice One": diceImageViewOne, "Dice Two": diceImageViewTwo];

        let dic = [1: #imageLiteral(resourceName: "DiceOne"), 2: #imageLiteral(resourceName: "DiceTwo"), 3: #imageLiteral(resourceName: "DiceThree"), 4: #imageLiteral(resourceName: "DiceFour"), 5: #imageLiteral(resourceName: "DiceFive"), 6: #imageLiteral(resourceName: "DiceSix")];
        
        dices.forEach{dice in
            let randomInt = Int.random(in: 1..<7);
            dice.value?.image = dic[randomInt];
            
            print(dice.key + ": " + String(randomInt));
        }
        print("---End Role---")
    }
    
}

