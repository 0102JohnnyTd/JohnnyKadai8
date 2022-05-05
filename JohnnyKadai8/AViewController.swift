//
//  AViewController.swift
//  JohnnyKadai8
//
//  Created by Johnny Toda on 2022/05/04.
//

import UIKit

protocol CustomSliderDelegate {
    func passToSliderValue(slider: UISlider)
}

final class AViewController: UIViewController {
    @IBOutlet private weak var valueLabelA: UILabel!

    @IBOutlet private weak var sliderA: UISlider!

    @IBAction func changeSliderValue(_ sender: Any) {
        valueLabelA.text = "\(sliderA.value)"
        delegate?.passToSliderValue(slider: sliderA)
    }

    var delegate: CustomSliderDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        getSliderValue()
    }

    private func getSliderValue() {
        valueLabelA.text = "\(sliderA.value)"
    }
}
