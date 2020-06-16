//
//  AlignmentSetter.swift
//  KissUI
//
//  Created by Trung on 6/1/20.
//  Copyright © 2020 trungnguyenthien. All rights reserved.
//

import Foundation


public protocol AlignmentSetter {
    func vAlign(_ value: AlignVertical) -> Self
    func hAlign(_ value: AlignHorizontal) -> Self
}

public extension AlignmentSetter where Self: SetViewLayout {
    func vAlign(_ value: AlignVertical) -> Self {
        attr.verticalAlignment = value
        return self
    }
    
    func hAlign(_ value: AlignHorizontal) -> Self {
        attr.horizontalAlignment = value
        return self
    }
}
