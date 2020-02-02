//
//  ViewController.swift
//  Quiz
//
//  Created by Adnan Sumra on 2/2/20.
//  Copyright © 2020 Adnan Sumra. All rights reserved.
//

import UIKit
import os

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    var currentQuestionIndex: Int = 0
    
    let questions: [String] = [
        "What is 7+7",
        "What class is this?",
        "Who made this app?"
    ]
    
    let answers: [String] = [
        "14",
        "IOS development",
        "Adnan Sumra"
    ]
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        os_log("show next question")
        
        currentQuestionIndex += 1
        if (currentQuestionIndex == questions.count) {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        
        answerLabel.text = "???"
    }
    
    @IBAction func showNextAnswer(_ sender: UIButton) {
        os_log("show answer")
        
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I just loaded");
        
        questionLabel.text = questions[currentQuestionIndex]
    }

}

