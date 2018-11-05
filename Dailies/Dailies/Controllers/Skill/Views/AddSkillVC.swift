//
//  AddSkillVC.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/4/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

class AddSkillVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Add Skill"
        let rightBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(didPressDone))
        let leftBarButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(didPressBack))
        self.navigationItem.rightBarButtonItem = rightBarButton
        self.navigationItem.leftBarButtonItem = leftBarButton
        
    }

    @objc func didPressDone() {
        self.navigationController?.popViewController(animated: false)
    }

    @objc func didPressBack() {
        self.navigationController?.popViewController(animated: false)
    }

}
