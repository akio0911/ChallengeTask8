//
//  SecondViewController.swift
//  ChallengeTask8
//
//  Created by 酒井健太郎 on 2020/12/27.
//

import UIKit

final class SecondViewController: UIViewController {
    
    @IBOutlet private weak var slider2: UISlider!
    @IBOutlet private weak var label2: UILabel!
    
    private var appDelegate: AppDelegate {
        UIApplication.shared.delegate as! AppDelegate
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        slider2.value = appDelegate.sliderValue
        label2.text = String(slider2.value)
    }
    
    @IBAction func sliderChanged2(_ sender: UISlider) {
        appDelegate.sliderValue = slider2.value
        label2.text = String(slider2.value)
    }
}
