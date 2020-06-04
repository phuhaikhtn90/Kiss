//
//  ViewLayout.swift
//  KissUI
//
//  Created by Trung on 6/4/20.
//  Copyright © 2020 trungnguyenthien. All rights reserved.
//

import Foundation
import UIKit

public class ViewLayout: LayoutAttribute, PaddingSetter, AnchorSetter, SizeSetter {
    var view: UIView? = nil
    override init() {
        super.init()
        self.isControl = true
    }
}
