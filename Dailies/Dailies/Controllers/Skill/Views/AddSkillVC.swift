//
//  AddSkillVC.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/4/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

protocol AddSkillDelegate: class {
    func didCreateSkill(view: AddSkillVC, skill: Skill)
}

class AddSkillVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var skillTextField: UITextField!

    var skill: Skill = Skill()
    weak var delegate: AddSkillDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Add Skill"
        let rightBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(didPressDone))
        let leftBarButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(didPressBack))
        self.navigationItem.rightBarButtonItem = rightBarButton
        self.navigationItem.leftBarButtonItem = leftBarButton

        self.skillTextField.delegate = self
        
    }

    @objc func didPressDone() {
        self.navigationController?.popViewController(animated: false)
        self.configureSkill()
        self.delegate?.didCreateSkill(view: self, skill: self.skill)
    }

    @objc func didPressBack() {
        self.navigationController?.popViewController(animated: false)
    }

    private func configureSkill() {
        self.skill.name = self.skillTextField.text ?? ""
    }

}