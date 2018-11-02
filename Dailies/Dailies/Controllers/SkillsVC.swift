//
//  SkillsVC.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/1/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

class SkillsVC: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.title = "Skills / Habits"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .green
    }

}
