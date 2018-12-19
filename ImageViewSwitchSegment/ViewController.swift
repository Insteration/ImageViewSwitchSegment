//
//  ViewController.swift
//  ImageViewSwitchSegment
//
//  Created by Artem Karmaz on 12/19/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var iPhoneImage: UIImageView!
    @IBOutlet weak var iPadImage: UIImageView!
    @IBAction func actionSwitch(_ sender: UISwitch) {
        textLabel.text = sender.isOn ? "True": "False"
        iPhoneImage.contentMode = sender.isOn ? .scaleAspectFit : .scaleToFill
    }
    @IBAction func changeColorSelector(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            iPadImage.backgroundColor = .white
        case 1:
            iPadImage.backgroundColor = .black
        case 2:
            iPadImage.backgroundColor = .green
        case 3:
            iPadImage.backgroundColor = .blue
        case 4:
            iPadImage.backgroundColor = .orange
        default:
            ()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

