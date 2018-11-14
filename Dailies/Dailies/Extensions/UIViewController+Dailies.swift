//
//  UIViewController+Dailies.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/10/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

extension UIViewController {

    func configureBackButton() {
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(didPressBack))
        backButton.tintColor = .black
        self.navigationItem.leftBarButtonItem = backButton
    }

    @objc func didPressBack() {
        self.navigationController?.popViewController(animated: false)
    }

}
