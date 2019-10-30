//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Melinda Diaz on 10/29/19.
//  Copyright © 2019 Melinda Diaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var colorGenerated = RGBValues()
    var score = 0
    var highScore = 0
    
    @IBOutlet weak var blueOutlet: UIButton!
    @IBOutlet weak var redOutlet: UIButton!
    @IBOutlet weak var greenOutlet: UIButton!
    @IBOutlet weak var currentScore: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var randomColorImage: UIView!
    @IBOutlet weak var guessThatColor: UILabel!
    
    @IBAction func playAgain(_ sender: UIButton) {
    }
    
    func currentScoreGenerator() {
        score += 1
    }
    
    func highScoreGenerator() {
        highScore += 1
    }
    
    @IBAction func randomColorButtons(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            if colorGenerated.highestRGB() == colorGenerated.green {
                currentScoreGenerator()
                guessThatColor.text = "You win! 🥳"
                currentScore.text = "Your current score is \(score)"
               // highScore.text = "HighScore = \(highScore)"
                 randomColorImage.backgroundColor = colorGenerated.rgbColor()
            } else {
                guessThatColor.text = "Loser!😢"
                [redOutlet, blueOutlet, greenOutlet].forEach({$0?.isEnabled = false})
                //you need to set a new game
            }
            
        case 1:   if colorGenerated.highestRGB() == colorGenerated.blue {
                      currentScoreGenerator()
                      guessThatColor.text = "You win! 🥳"
                      currentScore.text = "Your current score is \(score)"
                     // highScore.text = "HighScore = \(highScore)"
                       randomColorImage.backgroundColor = colorGenerated.rgbColor()
                  } else {
                      guessThatColor.text = "Loser!😢"
                      [redOutlet, blueOutlet, greenOutlet].forEach({$0?.isEnabled = false})
                      //you need to set a new game
                  }
        case 2:   if colorGenerated.highestRGB() == colorGenerated.red {
                      currentScoreGenerator()
                      guessThatColor.text = "You win! 🥳"
                      currentScore.text = "Your current score is \(score)"
                     // highScore.text = "HighScore = \(highScore)"
                       randomColorImage.backgroundColor = colorGenerated.rgbColor()
                  } else {
                      guessThatColor.text = "Loser!😢"
                      [redOutlet, blueOutlet, greenOutlet].forEach({$0?.isEnabled = false})
                      //you need to set a new game
                  }
        default:
            print("not found")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redOutlet.backgroundColor = .red
        greenOutlet.backgroundColor = .green
        blueOutlet.backgroundColor = .blue
        randomColorImage.backgroundColor = colorGenerated.rgbColor()
        
    }
    
}

