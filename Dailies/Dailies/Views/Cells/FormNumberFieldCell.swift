//
//  FormNumberFieldCell.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/10/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

protocol FormNumberFieldDelegate: class {
    func didUpdateQuantity(cell: FormNumberFieldCell, quantity: Int)
}

class FormNumberFieldCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!

    weak var delegate: FormNumberFieldDelegate?

    var title: String? {
        didSet {
            self.titleLabel.text = title
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        self.selectionStyle = .none
        self.textField.delegate = self
        self.textField.addTarget(self, action: #selector(didUpdateQuantity), for: .editingChanged)
        self.titleLabel.font = UIFont.dailiesTextFieldTitle()
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard NSCharacterSet(charactersIn: "0123456789").isSuperset(of: NSCharacterSet(charactersIn: string) as CharacterSet) else {
            return false
        }
        return true
    }

    @objc func didUpdateQuantity() {
        guard let input = self.textField.text else { return }
        guard let number = Int(input) else { return }
        self.delegate?.didUpdateQuantity(cell: self, quantity: number)
    }
    
}
