//
//  UnitCell.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/14/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

protocol UnitDelegate: class {
    func didSelectUnit(cell: UnitCell, unit: Unit)
}

class UnitCell: UITableViewCell {

    @IBOutlet weak var quantityButton: UIButton!
    @IBOutlet weak var timeButton: UIButton!

    weak var delegate: UnitDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()

        self.selectionStyle = .none
        self.quantityButton.addTarget(self, action: #selector(didTapQuantityButton), for: .touchUpInside)
        self.timeButton.addTarget(self, action: #selector(didTapTimeButton), for: .touchUpInside)
    }

    @objc func didTapQuantityButton() {
        self.timeButton.isSelected = false
        self.quantityButton.isSelected = !self.quantityButton.isSelected
//        if self.quantityButton.isSelected {
//            self.quantityButton.backgroundColor = UIColor.black
//        } else {
//            self.quantityButton.backgroundColor = UIColor.clear
//        }
        self.delegate?.didSelectUnit(cell: self, unit: .quantity)
    }

    @objc func didTapTimeButton() {
        self.quantityButton.isSelected = false
        self.timeButton.isSelected = !self.timeButton.isSelected
//        if self.timeButton.isSelected {
//            self.timeButton.backgroundColor = UIColor.black
//        } else {
//            self.timeButton.backgroundColor = UIColor.clear
//        }
        self.delegate?.didSelectUnit(cell: self, unit: .time)
    }

}
