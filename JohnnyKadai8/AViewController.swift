//
//  AViewController.swift
//  JohnnyKadai8
//
//  Created by Johnny Toda on 2022/05/04.
//

import UIKit

final class AViewController: UIViewController {
    @IBOutlet private weak var valueLabelA: UILabel!

    @IBOutlet private weak var sliderA: UISlider!

    @IBAction private func changeSliderValue(_ sender: Any) {
        showSliderValue()
        slidersData.recieveValue(sliderValue: sliderA.value)
    }

    private let slidersData = SlidersData.shared

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        recieveSlidersDataValue()
        showSliderValue()
    }

    private func recieveSlidersDataValue() {
        sliderA.value = slidersData.value
    }

    private func showSliderValue() {
        valueLabelA.text = "\(sliderA.value)"
    }
}
