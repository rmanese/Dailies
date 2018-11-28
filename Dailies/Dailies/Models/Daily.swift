 //
//  Daily.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/1/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import Foundation

enum Unit {
    case time, quantity, none
}

class Daily {

    var skill: Skill
    var task: String = ""
    var difficulties: [String: Difficulty?] = ["Easy": nil,
                                               "Medium": nil,
                                               "Hard": nil,
                                               "Epic": nil]
    var isComplete: Bool = false
    var unit: Unit = .none

    init(skill: Skill) {
        self.skill = skill
    }
}
