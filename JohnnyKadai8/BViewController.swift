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
        valueLabelB.text = "\(sliderB.value)"
    }

    private let viewControllerA = UIStoryboard(name: "A", bundle: nil).instantiateViewController(withIdentifier: "A") as! AViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllerA.delegate = self
    }
}

extension BViewController: CustomSliderDelegate {
    func passToSliderValue(slider: UISlider) {
        sliderB.value = slider.value
    }
}
