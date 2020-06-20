//
//  WrapLayout.swift
//  KissUI
//
//  Created by Trung on 6/4/20.
//  Copyright © 2020 trungnguyenthien. All rights reserved.
//

import Foundation

public class WrapLayout: GroupLayout {
    var lineSpacing = 0.0
    
    override init() {
        super.init()
        self.attr.widthDesignValue = .grow(.max)
        self.attr.heightDesignValue = .autoFit
    }
    
    public func line(spacing: Double) -> Self {
        lineSpacing = spacing
        return self
    }
}

extension WrapLayout {
    public override func copy(with zone: NSZone? = nil) -> Any {
        let instance = WrapLayout()
        instance.layoutItems = self.layoutItems.copy(with: zone)
        instance.view = self.view
        instance.attr = self.attr.copy(with: zone) as! LayoutAttribute
        instance.lineSpacing = self.lineSpacing
        return instance
    }
}
