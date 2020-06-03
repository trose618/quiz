//
//  ViewController.swift
//  quiz
//
//  Created by Def Method on 5/8/20.
//  Copyright © 2020 RoseZyArt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var questionLabel: UILabel!
  @IBOutlet var answerLabel: UILabel!
  
  var currentQuestionIndex: Int = 0
  
  let questions: [String] = [
    "What is 7+7?",
    "What is the capital of Vermont?",
    "What is cognac made from?"
  ]
  
  let answers: [String] = [
    "14",
    "Montpelier",
    "Grapes"
  ]
   
  @IBAction func showNextQuestion(_ sender: UIButton) {
    currentQuestionIndex += 1
    if currentQuestionIndex == questions.count {
      currentQuestionIndex = 0
    }
    
    let question: String = questions[currentQuestionIndex]
    questionLabel.text = question
    answerLabel.text = "???"
  }
  
  @IBAction func showAnswer(_ sender: UIButton) {
    let answer: String = answers[currentQuestionIndex]
    answerLabel.text = answer
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    questionLabel.text = questions[currentQuestionIndex]
  }
  
}

