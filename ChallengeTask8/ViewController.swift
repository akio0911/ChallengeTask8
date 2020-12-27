//
//  ViewController.swift
//  ChallengeTask8
//
//  Created by 酒井健太郎 on 2020/12/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        slider.value = UserDefaults.standard.float(forKey: "sliderValue")
        label.text = "\(UserDefaults.standard.float(forKey: "sliderValue"))"
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        UserDefaults.standard.set(slider.value, forKey: "sliderValue")
        let num = UserDefaults.standard.float(forKey: "sliderValue")
        label.text = "\(num)"
    }
    
}

