//
//  Difficulties.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/9/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import Foundation

enum DifficultyLevel {
    case easy, medium, hard, epic
}

class Difficulty {
    var daily: Daily
    var difficulty: DifficultyLevel
    var quantity: Int = 0

    init(difficulty: DifficultyLevel, daily: Daily) {
        self.difficulty = difficulty
        self.daily = daily
    }
}
