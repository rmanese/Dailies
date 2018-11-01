//
//  Daily.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/1/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import Foundation

class Daily {

    var skill: Skill
    var difficulty: String = ""

    init(skill: Skill) {
        self.skill = skill
    }
}
