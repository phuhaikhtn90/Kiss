//
//  public.swift
//  KissUI
//
//  Created by Trung on 6/1/20.
//  Copyright © 2020 trungnguyenthien. All rights reserved.
//

import Foundation

public enum WidthValue {
    case value(Double)
    case fill(Int8)
}

public enum HeightValue {
    case value(Double)
    case fit
    case minMax(Double, Double)
    // height / width
    case equalWidth(Double)
    case fill(Int8)
}

public enum HorizontalAlignmentValue {
    case left
    case right
    case hCenter
}

public enum VerticalAlignmentValue {
    case bottom
    case top
    case vCenter
}
