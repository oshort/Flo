//
//  ViewController.swift
//  Flo
//
//  Created by Oliver Short on 9/20/16.
//  Copyright © 2016 Oliver Short. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterView : CounterView!
    @IBOutlet weak var counterLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnPushButton(button: PushButtonView) {
        if button.isAddButton {
            counterView.counter += 1
        } else {
            if counterView.counter > 0 {
                counterView.counter -= 1
            }
        }
        counterLabel.text = String(counterView.counter)
    }
}

