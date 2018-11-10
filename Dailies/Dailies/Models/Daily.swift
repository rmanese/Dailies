 //
//  Daily.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/1/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import Foundation

enum Unit {
    case time, quantity
}

class Daily {

    var skill: Skill
    var task: String = ""
    var difficulties: [Difficulty] = []
    var isComplete: Bool = false
    var unit: Unit

    init(skill: Skill, unit: Unit) {
        self.skill = skill
        self.unit = unit
    }
}
