//
//  ViewController.swift
//  War
//
//  Created by Alexander Shapiro on 4/28/17.
//  Copyright © 2017 Alexander Shapiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        // Randomize left number from 0 to 12 then set the left image
        let leftNumber = Int(arc4random_uniform(13))
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        //Randomize right number from 0 to 12 then et the right image
        let rightNumber = Int(arc4random_uniform(13))
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        //Compare card numbers
        if leftNumber > rightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else if leftNumber < rightNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        } else if leftNumber == rightNumber {
            
        }
    }
    
    @IBAction func resetScores(_ sender: Any) {
        leftScore = 0
        leftScoreLabel.text = String(leftScore)
        leftImageView.image = UIImage(named: "back")
        rightScore = 0
        rightScoreLabel.text = String(rightScore)
        rightImageView.image = UIImage(named: "back")
    }
    

}

