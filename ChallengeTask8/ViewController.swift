//
//  ViewController.swift
//  ChallengeTask8
//
//  Created by 酒井健太郎 on 2020/12/27.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var label: UILabel!
    
    private var appDelegate: AppDelegate {
        UIApplication.shared.delegate as! AppDelegate
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        slider.value = appDelegate.sliderValue
        label.text = String(slider.value)
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        appDelegate.sliderValue = slider.value
        label.text = String(slider.value)
    }
}
