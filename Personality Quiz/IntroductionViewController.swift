//
//  ViewController.swift
//  Personality Quiz
//
//  Created by Mathew Soto on 12/5/22.
//

import UIKit

class IntroductionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(AnimalType.dog.rawValue)
    }

    @IBAction func unwindToIntroduction(unwindSegue: UIStoryboardSegue) {}

}

