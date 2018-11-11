//
//  UITableView+Dailies.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/10/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

extension UITableView {

    func dequeueNibCell<Cell: UITableViewCell>(cellClass: Cell.Type) -> Cell {
        let cellName = String(describing: cellClass)
        if let cell = self.dequeueReusableCell(withIdentifier: cellName) as? Cell {
            return cell
        }
        let nib = UINib(nibName: cellName, bundle: nil)
        self.register(nib, forCellReuseIdentifier: cellName)
        return self.dequeueReusableCell(withIdentifier: cellName) as! Cell
    }

}
