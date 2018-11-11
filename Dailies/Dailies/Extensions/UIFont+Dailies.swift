//
//  UIFont+Dailies.swift
//  Dailies
//
//  Created by Roberto Manese III on 11/10/18.
//  Copyright © 2018 jawnyawn. All rights reserved.
//

import UIKit

extension UIFont {

    class func dailiesItalicFont(size: CGFloat = 12.0) -> UIFont {
        return UIFont(name: "AvenirNext-Italic", size: size)!
    }

    class func dailiesBoldTitleFont() -> UIFont {
        return UIFont(name: "AvenirNext-Bold", size: 36)!
    }

    class func dailiesSubheaderTitleFont() -> UIFont {
        return UIFont(name: "AvenirNext-DemiBold", size: 20)!
    }

    class func dailiesTextFieldTitle() -> UIFont {
        return UIFont(name: "AvenirNext-DemiBold", size: 14)!
    }

}
