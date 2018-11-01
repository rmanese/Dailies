//
//  Daily.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/1/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import Foundation

enum Difficulty {
    case easy, medium, hard, epic
}

enum Unit {
    case time, quantity
}

class Daily {

    var skill: Skill
    var task: String = ""
    var difficulty: [String: Int] = [:]
    var isComplete: Bool = false
    var unit: Unit

    init(skill: Skill, unit: Unit) {
        self.skill = skill
        self.unit = unit
    }
}
