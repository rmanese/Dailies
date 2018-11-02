//
//  SkillsVC.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/1/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

class SkillsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.title = "Skills / Habits"
    }
//
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let addSkillButton = UIBarButtonItem(title: "Add Skill", style: .plain, target: self, action: #selector(didTapAddSkillButton))
        self.navigationItem.rightBarButtonItem = addSkillButton

        self.view.backgroundColor = .green
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        return cell
    }

    @objc func didTapAddSkillButton() {
        
    }

}
