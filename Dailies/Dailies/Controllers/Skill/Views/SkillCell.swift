//
//  SkillCell.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/4/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

class SkillCell: UICollectionViewCell {

    @IBOutlet weak var skillName: UILabel!
    @IBOutlet weak var experienceBarView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.backgroundColor = .blue
    }

    func configure(skill: Skill) {
        self.skillName.text = skill.name
    }

}
