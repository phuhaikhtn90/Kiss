//
//  ViewLayout.swift
//  KissUI
//
//  Created by Trung on 6/4/20.
//  Copyright © 2020 trungnguyenthien. All rights reserved.
//

import Foundation
import UIKit

public class UIViewLayout: PaddingSetter, EdgeSetter, SizeSetter, LayoutItem {
    public var isVisible: Bool {
        return view?.isVisible == true
    }
    
    var attr = LayoutAttribute()
    var view: UIView? = nil
    
    init() {
        self.attr.widthDesignValue = .autoFit
        self.attr.heightDesignValue = .autoFit
    }
    
    var labelContent: UILabel? {
        return view as? UILabel
    }
}

extension UIViewLayout: NSCopying {
    public func copy(with zone: NSZone? = nil) -> Any {
        let instance = UIViewLayout()
        instance.view = self.view
        instance.attr = self.attr.copy(with: zone) as! LayoutAttribute
        return instance
    }
}