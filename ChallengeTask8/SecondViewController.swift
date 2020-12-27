//
//  SecondViewController.swift
//  ChallengeTask8
//
//  Created by 酒井健太郎 on 2020/12/27.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        slider2.value = UserDefaults.standard.float(forKey: "sliderValue")
        label2.text = "\(UserDefaults.standard.float(forKey: "sliderValue"))"
    }
    
    @IBAction func sliderChanged2(_ sender: UISlider) {
        UserDefaults.standard.set(slider2.value, forKey: "sliderValue")
        let num = UserDefaults.standard.float(forKey: "sliderValue")
        label2.text = "\(num)"
    }
}
