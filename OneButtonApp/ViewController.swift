//
//  ViewController.swift
//  OneButtonApp
//
//  Created by Blake Merryman on 6/28/17.
//  Copyright © 2017 Blake Merryman. All rights reserved.
//

import UIKit

let NumberOfTapsStorageKey = "OneButtonApp.NumerOfTaps"

class ViewController: UIViewController {

    fileprivate var numberOfTaps: Int = UserDefaults.standard.integer(forKey: NumberOfTapsStorageKey) {
        didSet {
            UserDefaults.standard.set(numberOfTaps, forKey: NumberOfTapsStorageKey)
        }
    }

    @IBOutlet weak var numberOfTapsLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var resetButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
    }

    fileprivate func updateLabel() {
        print("Number of taps - \(numberOfTaps)")
        numberOfTapsLabel.text = "Button was tapped \n\(numberOfTaps) time" + (numberOfTaps == 1 ? "" : "s")
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        numberOfTaps += 1
        updateLabel()
    }

    @IBAction func resetButtonTapped(_ sender: UIButton) {
        numberOfTaps = 0
        updateLabel()
    }

}
