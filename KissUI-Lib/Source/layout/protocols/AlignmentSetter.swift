//
//  AlignmentSetter.swift
//  KissUI
//
//  Created by Trung on 6/1/20.
//  Copyright © 2020 trungnguyenthien. All rights reserved.
//

import Foundation


public protocol AlignmentSetter {
    @discardableResult func align(vertical value: AlignVertical) -> Self
    @discardableResult func align(horizontal value: AlignHorizontal) -> Self
}

public extension AlignmentSetter where Self: LayoutItem {
    func align(vertical value: AlignVertical) -> Self {
        attr.userVerticalAlign = value
        return self
    }
    
    func align(horizontal value: AlignHorizontal) -> Self {
        attr.userHorizontalAlign = value
        return self
    }
}
