//
//  LeaderboardEntry.swift
//  QuizApp
//
//  Created by Toluwa Davies on 7/27/20.
//  Copyright © 2020 Toluwa Davies. All rights reserved.
//

import Foundation

class LeaderboardEntry {
    var email: String
    var numberCorrect : String
    
    init(email: String, numberCorrect: String) {
        self.email = email
        self.numberCorrect = numberCorrect
    }
}
