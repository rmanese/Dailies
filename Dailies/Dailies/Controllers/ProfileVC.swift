//
//  ProfileVC.swift
//  Dailies
//
//  Created by Roberto Manese III on 10/31/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.title = "Profile"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .orange
        self.title = "Profile"
    }

}
