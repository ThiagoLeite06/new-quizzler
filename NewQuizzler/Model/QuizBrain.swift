//
//  QuizBrain.swift
//  NewQuizzler
//
//  Created by Thiago Leite on 03/10/21.
//

import Foundation

struct QuizBrain {
    var quiz = [
        Question(q: "Colombo descobriu o Brasil. ", a: "Falso"),
        Question(q: "O maior país do mundo é a Russia.", a: "Verdadeiro"),
        Question(q: "Itália é o país com maior expectativa de vida do mundo.", a: "Falso"),
        Question(q: "Neymar nasceu em Belo Horizonte - MG.", a: "Falso"),
    ]
    
    var questionNumber = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool  {
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
        
    }
    
    public func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    public mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
//            score = 0
        }

    }
}
