//
//  ExperienceBarView.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/7/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

class ExperienceBarView: UIView {

    @IBOutlet weak var experienceBar: UIProgressView!
    @IBOutlet weak var minExp: UILabel!
    @IBOutlet weak var maxExp: UILabel!
    @IBOutlet weak var percentage: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }

    private func commonInit() {
        let nib = UINib(nibName: "ExperienceBarView", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        self.addSubview(view)
        view.frame = self.bounds
        self.configure()
    }

    func configure() {
        self.experienceBar.tintColor = UIColor.yellow
        self.experienceBar.transform = self.experienceBar.transform.scaledBy(x: 1, y: 10)
    }

}
