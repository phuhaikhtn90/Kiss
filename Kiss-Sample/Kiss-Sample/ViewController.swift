//
//  ViewController.swift
//  Kiss-Sample
//
//  Created by Trung on 5/27/20.
//  Copyright © 2020 trungnguyenthien. All rights reserved.
//

import UIKit
import KissUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        compactLayout.layoutSubviews(width: 300)
        
    }
}

let small = 4.0
let medium = 8.0

var compactLayout =
vstack { // Product thumbnail
    UIImageView().layout
    vspacer /* |---| */
    vstack { /* Vertical Stack */
        "Nguyen".labelMedium.layout.top(small)
        " THIEN".labelSmall.layout.top(small)
        " trung----".labelBigBold.layout.top(small)
        UILabel().layout.left(medium).top(small)
    }.top(medium).min(width: 300).hAlign(.right)
    zstack { // List tags attribute
        UILabel().layout.size(.zero).left(small)
        UILabel().layout.left(small)
        UILabel().layout.left(small)
        UILabel().layout.left(small)
    }.line(spacing: small).top(small)
}.padding(medium)

extension String {
    var label: UILabel {
        let view = UILabel()
        view.text = self
        return view;
    }
    
    var labelSmall: UILabel {
        let label = self.label
        label.font = UIFont.systemFont(ofSize: 8, weight: .medium)
        return label
    }
    
    var labelMedium: UILabel {
        let label = self.label
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return label
    }
    
    var labelBigBold: UILabel {
        let label = self.label
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
    }
}
