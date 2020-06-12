//
//  VSpacer.swift
//  KissUI
//
//  Created by Trung on 6/4/20.
//  Copyright © 2020 trungnguyenthien. All rights reserved.
//

import Foundation


public class VSpacer: LayoutAttribute {
    override init() {
        super.init()
        self.widthDesignValue = .value(.sameZero)
        self.heightDesignValue = .grow(.sameZero)
        self.isControl = true
    }
    

}
