//
//  SlidersData.swift
//  JohnnyKadai8
//
//  Created by Johnny Toda on 2022/05/05.
//

import Foundation

final class SlidersData {
    var value: Float = 0

    func recieveValue(sliderValue: Float) {
        value = sliderValue
    }

    static let shared = SlidersData()
    private init() {
    }
}
