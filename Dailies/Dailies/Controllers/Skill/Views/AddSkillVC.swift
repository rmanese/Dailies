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
        self.configureBackButton()

        self.skillTextField.delegate = self
        let saveButton = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(didTapSaveButton))
        saveButton.tintColor = .black
        self.navigationItem.rightBarButtonItem = saveButton
    }

    @objc func didTapSaveButton() {
        self.configureSkill()
    }

    private func configureSkill() {
        guard self.skillTextField.text != "" else { return }
        self.skill.name = self.skillTextField.text ?? ""
        self.delegate?.didCreateSkill(view: self, skill: self.skill)
        self.navigationController?.popViewController(animated: false)
    }

}
