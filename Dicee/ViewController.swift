//
//  ViewController.swift
//  Dicee
//
//  Created by Bobby Lin on 27/8/19.
//  Copyright © 2019 Demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceImageName: [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        refreshDiceImage(new_index: generateRandomDiceIndex(), diceImageView: diceImageView1)
        refreshDiceImage(new_index: generateRandomDiceIndex(), diceImageView: diceImageView2)
    }
    
    func generateRandomDiceIndex() -> Int {
        return Int.random(in: 0 ... 5)
    }
    
    func refreshDiceImage(new_index: Int, diceImageView: UIImageView) {
        diceImageView.image = UIImage.init(named: diceImageName[new_index])
    }
    
}

