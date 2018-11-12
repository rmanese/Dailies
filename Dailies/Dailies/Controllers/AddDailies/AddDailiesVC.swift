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

class AddDailiesVC: UIViewController, UITableViewDataSource, FormTextFieldDelegate, FormNumberFieldDelegate {

    @IBOutlet weak var tableView: UITableView!

    var daily: Daily

    init(daily: Daily) {
        self.daily = daily
        super.init(nibName: nil,  bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self
        self.configureTableView()
        self.configureBackButton()
        self.configureSaveButton()
        self.view.backgroundColor = UIColor.purple
    }

    // MARK: - Private Methods

    private func configureTableView() {
        self.tableView.separatorStyle = .none
        self.tableView.tableFooterView = UIView()
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
            return UITableViewCell()
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

    @objc override func didPressBack() {

    }

    // MARK: - FormTextFieldDelegate

    func didUpdateText(cell: FormTextFieldCell, content: String) {
        self.daily.task = content
    }

    // MARK: - FormNumberFieldDelegate

    func didUpdateText(cell: FormNumberFieldCell, content: String) {
        guard let indexPath = self.tableView.indexPath(for: cell) else { return }
        switch indexPath.row {
        case AddDailiesFormRows.easy.rawValue:
            break
        case AddDailiesFormRows.medium.rawValue:
            break
        case AddDailiesFormRows.hard.rawValue:
            break
        case AddDailiesFormRows.epic.rawValue:
            break
        default:
            break
        }
    }

}
