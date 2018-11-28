//
//  Difficulty.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/9/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import Foundation

enum DegreeOfDifficulty {
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
    let degree: DegreeOfDifficulty
    init(degree: DegreeOfDifficulty) {
        self.degree = degree
    }

}

class Easy: Difficulty {
    var daily: Daily? = nil
    var quantity: Int

    init(quantity: Int) {
        self.quantity = quantity
        super.init(degree: .easy)
    }
}

class Medium: Difficulty {
    var daily: Daily? = nil
    var quantity: Int

    init(quantity: Int) {
        self.quantity = quantity
        super.init(degree: .medium)
    }
}

class Hard: Difficulty {
    var daily: Daily? = nil
    var quantity: Int

    init(quantity: Int) {
        self.quantity = quantity
        super.init(degree: .hard)
    }
}

class Epic: Difficulty {
    var daily: Daily? = nil
    var quantity: Int

    init(quantity: Int) {
        self.quantity = quantity
        super.init(degree: .epic)
    }
}
