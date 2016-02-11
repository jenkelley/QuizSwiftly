//
//  ViewController.swift
//  QuizSwiftStyle
//
//  Created by Jen Kelley on 2/11/16.
//  Copyright © 2016 Jen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel : UILabel!
    @IBOutlet var answerLabel : UILabel!

    let questions = ["From what is cognac made?",
                     "What is 7 + 7",
                     "What is the capital of Vermont"]
    let answers = ["Grapes",
                    "14",
                    "Montpelier"]
    var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentIndex]
    }

    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentIndex
        if currentIndex == questions.count {
            currentIndex = 0
        }
        questionLabel.text = questions[currentIndex]
        answerLabel.text = "???"
    }

    @IBAction func showAnswer(sender: AnyObject) {
        answerLabel.text = answers[currentIndex]
    }
}

