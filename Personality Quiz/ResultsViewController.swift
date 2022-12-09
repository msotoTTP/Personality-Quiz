//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Mathew Soto on 12/5/22.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //the textbook leaves this as an empty array, which would
    //force us to define a new initializer among a few other things.
    //this is easier and works for what we're doing.
    var results: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        //don't let user go back to the final question
        navigationItem.hidesBackButton = true
        computePersonalityTrait()
    }
    
    func computePersonalityTrait() {
        //get count of each animal
        var animalCount: [AnimalType: Int] = [
            .dog: 0,
            .cat: 0,
            .rabbit: 0,
            .turtle: 0
        ]
        for answer in results {
            animalCount[answer.type]! += 1
        }
        
        //finds the animal with the most appearances in the results,
        //which is what we're assigning to the user. The part in between
        //the curly braces states how we're deciding what the "max" means,
        //which in this case is we're ordering it by the value (which is
        //number of appearances)
        var mostCommonAnimal: AnimalType?
        var mostAppearances = -1
        for (animal, appearances) in animalCount {
            if appearances > mostAppearances {
                mostAppearances = appearances
                mostCommonAnimal = animal
            }
        }
        
        displayResults(result: mostCommonAnimal!)
    }
    
    func displayResults(result: AnimalType) {
        displayLabel.text = "You are a \(result.rawValue)!"
        descriptionLabel.text = result.definition
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
