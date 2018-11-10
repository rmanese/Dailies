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

class AddDailiesVC: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self
        self.configureTableView()
    }

    // MARK: - Private Methods

    private func configureTableView() {
        self.tableView.separatorStyle = .none
        self.tableView.tableFooterView = UIView()

        self.tableView.register(UINib(nibName: String(describing: FormTextFieldCell.self), bundle: nil), forCellReuseIdentifier: "FormTextFieldCell")
        self.tableView.register(UINib(nibName: String(describing: FormNumberFieldCell.self), bundle: nil), forCellReuseIdentifier: "FormNumberFieldCell")
    }

    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AddDailiesFormRows.allCases.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case AddDailiesFormRows.task.rawValue:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "FormTextFieldCell") as! FormTextFieldCell
            cell.title = "Task"
            return cell
        case AddDailiesFormRows.unit.rawValue:
            return UITableViewCell()
        case AddDailiesFormRows.easy.rawValue:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "FormNumberFieldCell") as! FormNumberFieldCell
            cell.title = "Easy"
            return cell
        case AddDailiesFormRows.medium.rawValue:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "FormNumberFieldCell") as! FormNumberFieldCell
            cell.title = "Medium"
            return cell
        case AddDailiesFormRows.hard.rawValue:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "FormNumberFieldCell") as! FormNumberFieldCell
            cell.title = "Hard"
            return cell
        case AddDailiesFormRows.epic.rawValue:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "FormNumberFieldCell") as! FormNumberFieldCell
            cell.title = "Epic"
            return cell
        default:
            return UITableViewCell()
        }
    }

}
