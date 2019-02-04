//
//  ViewController.swift
//  MAGIC EIGHT BALL Q1
//
//  Created by Sarah Minji Kim on 2/4/19.
//  Copyright © 2019 Sarah Minji Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var index = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    let answerArray = ["It is certain",
                       "It is decidedly so",
                       "Without a doubt",
                       "Yes, definitely",
                       "You may rely on it",
                       "As I see it, yes",
                       "Most likely",
                       "Outlook good",
                       "Yes",
                       "Signs point to yes",
                       "Reply hazy try again",
                       "Ask again later",
                       "Better not tell you now",
                       "Cannot predict now",
                       "Concentrate and ask again",
                       "Don't count on it",
                       "My reply is no",
                       "My sources say no",
                       "Outlook not so good",
                       "Very doubtful"]
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        //        var newPhrase = ""
        //        repeat{
        //            newPhrase = answerArray.randomElement()!
        //        } while resultLabel.text == newPhrase
        
        //OR
        
        //        var newPhrase = answerArray.randomElement()!
        //        while resultLabel.text == newPhrase{
        //            newPhrase = answerArray.randomElement()!
        //        }
        //        resultLabel.text = newPhrase
        
        //OR
        
        var newIndex = Int.random(in: 0..<answerArray.count)
        while index == newIndex {
            newIndex = Int.random(in: 0..<answerArray.count)
        }
        index = newIndex
        resultLabel.text = answerArray[index]
    }
    
}
