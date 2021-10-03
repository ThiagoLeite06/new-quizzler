//
//  ViewController.swift
//  NewQuizzler
//
//  Created by Thiago Leite on 03/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.upDateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if let userAnswer = sender.titleLabel?.text {
            let userGotItRight = quizBrain.checkAnswer(userAnswer)
            if userGotItRight {
                print("Acertou")
            } else {
                print("Errou")
            }
            quizBrain.nextQuestion()
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(upDateUI), userInfo: nil, repeats: false)
        
        }
    }
    
    @objc private func upDateUI() {
        questionLabel.text = quizBrain.getQuestionText()
//        trueButton.backgroundColor = UIColor.clear
//        falseButton.backgroundColor = UIColor.clear
//        progressBar.progress = quizBrain.getProgress()
//        scoreLabel.text = "Socore: \(quizBrain.getScore())"
        
    }
    
    
}

