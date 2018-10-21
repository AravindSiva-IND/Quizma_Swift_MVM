//
//  Question.swift
//  Quizma
//
//  Created by Aravind siva on 21/10/18.
//  Copyright © 2018 Aravind siva. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer: Bool
    
    init(text: String, isCorrectAnswer: Bool) {
        questionText = text
        answer = isCorrectAnswer
    }
}
