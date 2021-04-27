//
//  ViewController.swift
//  sliderAndImageViewPractice
//
//  Created by Lai Po Ying on 2021/4/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rabbitImageView: UIImageView!
    @IBOutlet weak var pImageView: UIImageView!
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flowerImageView.alpha = 0
        // Do any additional setup after loading the view.
    }
    @IBAction func sliderChange(_ sender: UISlider) {
        pImageView.frame.origin.x = CGFloat(117 + sliderValue.value)
        rabbitImageView.frame.origin.x = CGFloat(670 - sliderValue.value)
        flowerImageView.alpha = CGFloat(sliderValue.value/223)
        print(sliderValue.value)
    }
}

