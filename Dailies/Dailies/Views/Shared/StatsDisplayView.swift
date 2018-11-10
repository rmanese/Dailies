//
//  StatsDisplayView.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/4/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

class StatsDisplayView: UIView {

    @IBOutlet weak var skillName: UILabel!
    @IBOutlet weak var skillLevel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }

    private func commonInit() {
        let nib = UINib(nibName: "StatsDisplayView", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        self.addSubview(view)
        view.frame = self.bounds
    }

}
