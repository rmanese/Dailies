//
//  SkillDetailsVC.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/4/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

class SkillDetailsVC: UIViewController, AddDailyDelegate {

    @IBOutlet weak var statsDisplayView: StatsDisplayView!

    var skill: Skill

    init(skill: Skill) {
        self.skill = skill
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .red
        let addDailiesButton = UIBarButtonItem(title: "Add Daily", style: .plain, target: self, action: #selector(didTapAddDailyButton))
        self.navigationItem.rightBarButtonItem = addDailiesButton
        self.configureStatView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        NSLog("here")
    }

    func configureStatView() {
        self.statsDisplayView.skillName.text = self.skill.name
        self.statsDisplayView.skillLevel.text = "Lv. \(self.skill.level)"
    }

    @objc func didTapAddDailyButton() {
        let dailiesVC = AddDailiesVC(daily: Daily(skill: self.skill))
        dailiesVC.delegate = self
        self.navigationController?.pushViewController(dailiesVC, animated: false)
    }

    // MARK: - AddDailyDelegate

    func didCreateDaily(daily: Daily) {
        self.skill.dailies.append(daily)
        NSLog("here")
    }

}
