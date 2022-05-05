//
//  BViewController.swift
//  JohnnyKadai8
//
//  Created by Johnny Toda on 2022/05/04.
//

import UIKit

final class BViewController: UIViewController {
    @IBOutlet private weak var valueLabelB: UILabel!

    @IBOutlet private weak var sliderB: UISlider!

    @IBAction private func getSliderValue(_ sender: Any) {
        showSliderValue()
        slidersData.recieveValue(sliderValue: sliderB.value)
    }

    private let slidersData = SlidersData.shared

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        recieveSlidersDataValue()
        showSliderValue()
    }

    private func recieveSlidersDataValue() {
        sliderB.value = slidersData.value
    }

    private func showSliderValue() {
        valueLabelB.text = "\(sliderB.value)"
    }
}
