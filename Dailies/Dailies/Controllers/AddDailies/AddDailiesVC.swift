//
//  AddDailiesVC.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/10/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

enum AddDailiesFormRows: Int, CaseIterable {
    case task, unit, easy, medium, hard, epic
}

class AddDailiesVC: UIViewController, UITableViewDataSource, FormTextFieldDelegate, FormNumberFieldDelegate, UnitDelegate {

    @IBOutlet weak private var tableView: UITableView!

    private var daily:  Daily
    private var easy:   Difficulty? = nil
    private var medium: Difficulty? = nil
    private var hard:   Difficulty? = nil
    private var epic:   Difficulty? = nil

    init(daily: Daily) {
        self.daily = daily
        super.init(nibName: nil,  bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let saveButton = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(didPressSave))
        saveButton.tintColor = .black
        self.navigationItem.rightBarButtonItem = saveButton

        self.tableView.dataSource = self
        self.configureTableView()
        self.configureBackButton()
        self.view.backgroundColor = UIColor.purple
    }

    // MARK: - Private Methods

    private func configureTableView() {
        self.tableView.separatorStyle = .none
        let footView = UIView()
        footView.alpha = 0
        self.tableView.tableFooterView = footView
    }

    private func quantityCheck(quantity: Int) -> Bool {
        return quantity > 0
    }

//    private func configureDaily() {
//        let easy = Difficulty(difficulty: .easy, daily: self.daily, quantity: self.easy)
//        let medium = Difficulty(difficulty: .medium, daily: self.daily, quantity: self.medium)
//        let hard = Difficulty(difficulty: .hard, daily: self.daily, quantity: self.hard)int
//        let epic = Difficulty(difficulty: .epic, daily: self.daily, quantity: self.epic)
//
//        self.daily.difficulties[DifficultyLevel.easy.rawValue] = easy
//    }

    // MARK: - Action Methods

    @objc func didPressSave() {

    }

    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AddDailiesFormRows.allCases.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case AddDailiesFormRows.task.rawValue:
            let cell = self.tableView.dequeueNibCell(cellClass: FormTextFieldCell.self)
            cell.title = "Task"
            cell.delegate = self
            return cell
        case AddDailiesFormRows.unit.rawValue:
            let cell = self.tableView.dequeueNibCell(cellClass: UnitCell.self)
            cell.delegate = self
            return cell
        case AddDailiesFormRows.easy.rawValue:
            let cell = self.tableView.dequeueNibCell(cellClass: FormNumberFieldCell.self)
            cell.title = "Easy"
            cell.delegate = self
            return cell
        case AddDailiesFormRows.medium.rawValue:
            let cell = self.tableView.dequeueNibCell(cellClass: FormNumberFieldCell.self)
            cell.title = "Medium"
            cell.delegate = self
            return cell
        case AddDailiesFormRows.hard.rawValue:
            let cell = self.tableView.dequeueNibCell(cellClass: FormNumberFieldCell.self)
            cell.title = "Hard"
            cell.delegate = self
            return cell
        case AddDailiesFormRows.epic.rawValue:
            let cell = self.tableView.dequeueNibCell(cellClass: FormNumberFieldCell.self)
            cell.title = "Epic"
            cell.delegate = self
            return cell
        default:
            return UITableViewCell()
        }
    }

    // MARK: - FormTextFieldDelegate

    func didUpdateText(cell: FormTextFieldCell, content: String) {
        self.daily.task = content
    }

    // MARK: - FormNumberFieldDelegate

    func didUpdateQuantity(cell: FormNumberFieldCell, quantity: Int) {
        guard let indexPath = self.tableView.indexPath(for: cell) else { return }
        switch indexPath.row {
        case AddDailiesFormRows.easy.rawValue:
            self.easy = Difficulty(difficulty: .easy, daily: self.daily, quantity: quantity)
        case AddDailiesFormRows.medium.rawValue:
            self.medium = Difficulty(difficulty: .medium, daily: self.daily, quantity: quantity)
        case AddDailiesFormRows.hard.rawValue:
            self.hard = Difficulty(difficulty: .hard, daily: self.daily, quantity: quantity)
        case AddDailiesFormRows.epic.rawValue:
            self.epic = Difficulty(difficulty: .epic, daily: self.daily, quantity: quantity)
        default:
            break
        }
    }

    // MARK: - UnitDelegate

    func didSelectUnit(cell: UnitCell) {
        
    }

}
