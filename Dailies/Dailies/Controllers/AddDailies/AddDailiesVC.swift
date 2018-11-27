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
    private var easy:   Easy? = nil
    private var medium: Medium? = nil
    private var hard:   Hard? = nil
    private var epic:   Epic? = nil

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
        self.tableView.tableFooterView = UIView()
    }

    private func quantityChecker(difficulty: Difficulty?, quantity: Int) -> Difficulty? {
        guard quantity > 0 else { return nil }
        return nil
    }

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
            self.easy = Easy(daily: self.daily, quantity: quantity)
        case AddDailiesFormRows.medium.rawValue:
            self.medium = Medium(daily: self.daily, quantity: quantity)
        case AddDailiesFormRows.hard.rawValue:
            self.hard = Hard(daily: self.daily, quantity: quantity)
        case AddDailiesFormRows.epic.rawValue:
            self.epic = Epic(daily: self.daily, quantity: quantity)
        default:
            break
        }
    }

    // MARK: - UnitDelegate

    func didSelectUnit(cell: UnitCell) {
        
    }

}
