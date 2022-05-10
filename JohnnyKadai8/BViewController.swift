//
//  BViewController.swift
//  JohnnyKadai8
//
//  Created by Johnny Toda on 2022/05/04.
//

import UIKit

final class BViewController: UIViewController {
    @IBOutlet private weak var valueLabel: UILabel!

    @IBOutlet private weak var slider: UISlider!

    @IBAction private func getSliderValue(_ sender: Any) {
        showSliderValue()
        slidersData.saveValue(sliderValue: slider.value)
    }

    private let slidersData = SlidersData.shared

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        recieveSlidersDataValue()
        showSliderValue()
    }

    private func recieveSlidersDataValue() {
        slider.value = slidersData.value
    }

    private func showSliderValue() {
        valueLabel.text = "\(slider.value)"
    }
}
