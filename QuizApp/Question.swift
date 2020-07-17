//
//  Question.swift
//  QuizApp
//
//  Created by Michael Feldmann on 7/17/20.
//  Copyright © 2020 Toluwa Davies. All rights reserved.
//

import Foundation

var category1Questions = [Question.self]
var category2Questions = [Question.self]
var category3Questions = [Question.self]
var category4Questions = [Question.self]
var category5Questions = [Question.self]

class Question {
    
    var questionText: String
    var answer1 : String
    var answer2 : String
    var answer3 : String
    var answer4 : String
    var correctChoice : Int
    
    init(questionText: String, answer1: String, answer2: String, answer3: String, answer4: String, correctChoice: Int) {
        
        self.questionText = questionText
        self.answer1 = answer1
        self.answer2 = answer2
        self.answer3 = answer3
        self.answer4 = answer4
        self.correctChoice = correctChoice
        
    }
    
    
}
