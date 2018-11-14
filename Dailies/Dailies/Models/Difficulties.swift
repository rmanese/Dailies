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

    func getString() -> String {
        switch self {
        case .easy:
            return "Easy"
        case .medium:
            return "Medium"
        case .hard:
            return "Hard"
        case .epic:
            return "Epic"
        }
    }
}

class Difficulty {
    var daily: Daily
    var difficulty: DifficultyLevel
    var quantity: Int

    init(difficulty: DifficultyLevel, daily: Daily, quantity: Int) {
        self.difficulty = difficulty
        self.daily = daily
        self.quantity = quantity
    }
}
