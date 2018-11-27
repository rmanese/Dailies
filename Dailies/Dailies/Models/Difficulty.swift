//
//  Difficulty.swift
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
    let difficulty: DifficultyLevel
    init(difficulty: DifficultyLevel) {
        self.difficulty = difficulty
    }
}

class Easy: Difficulty {
    let daily: Daily
    var quantity: Int

    init(daily: Daily, quantity: Int) {
        self.daily = daily
        self.quantity = quantity
        super.init(difficulty: .easy)
    }
}

class Medium: Difficulty {
    var daily: Daily
    var quantity: Int

    init(daily: Daily, quantity: Int) {
        self.daily = daily
        self.quantity = quantity
        super.init(difficulty: .medium)
    }
}

class Hard: Difficulty {
    var daily: Daily
    var quantity: Int

    init(daily: Daily, quantity: Int) {
        self.daily = daily
        self.quantity = quantity
        super.init(difficulty: .hard)
    }
}

class Epic: Difficulty {
    var daily: Daily
    var quantity: Int

    init(daily: Daily, quantity: Int) {
        self.daily = daily
        self.quantity = quantity
        super.init(difficulty: .epic)
    }
}
