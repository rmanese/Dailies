//
//  DailiesVC.swift
//  Dailies
//
//  Created by Roberto Manese III on 10/31/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

class DailiesVC: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.title = "Dailies"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .gray
        self.tableView.dataSource = self
    }

    // MARK: - UITableViewDataSource

    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Easy"
        case 1:
            return "Medium"
        case 2:
            return "Hard"
        case 3:
            return "Epic"
        default:
            break
        }
        return nil
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

}
