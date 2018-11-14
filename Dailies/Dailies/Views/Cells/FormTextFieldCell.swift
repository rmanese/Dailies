//
//  FormTextFieldCell.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/10/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

protocol FormTextFieldDelegate: class {
    func didUpdateText(cell: FormTextFieldCell, content: String)
}

class FormTextFieldCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!

    weak var delegate: FormTextFieldDelegate?

    var title: String? {
        didSet {
            self.titleLabel.text = title
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        self.selectionStyle = .none
        self.textField.delegate = self
        self.textField.addTarget(self, action: #selector(didUpdateText), for: .editingChanged)
        self.titleLabel.font = UIFont.dailiesTextFieldTitle()
    }

    @objc func didUpdateText() {
        guard let text = self.textField.text else { return }
        self.delegate?.didUpdateText(cell: self, content: text)
    }
    
}
