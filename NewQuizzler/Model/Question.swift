//
//  Question.swift
//  NewQuizzler
//
//  Created by Thiago Leite on 03/10/21.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
