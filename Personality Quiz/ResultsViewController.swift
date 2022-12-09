//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Mathew Soto on 12/5/22.
//

import UIKit

class ResultsViewController: UIViewController {
    
    //the textbook leaves this as an empty array, which would
    //force us to define a new initializer among a few other things.
    //this is easier and works for what we're doing.
    var results: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
