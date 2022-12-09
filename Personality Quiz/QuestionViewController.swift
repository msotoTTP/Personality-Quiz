//
//  QuestionViewController.swift
//  Personality Quiz
//
//  Created by Mathew Soto on 12/5/22.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButton1: UIButton!
    @IBOutlet var singleButton2: UIButton!
    @IBOutlet var singleButton3: UIButton!
    @IBOutlet var singleButton4: UIButton!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multiLabel1: UILabel!
    @IBOutlet var multiLabel2: UILabel!
    @IBOutlet var multiLabel3: UILabel!
    @IBOutlet var multiLabel4: UILabel!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet var rangedLabel1: UILabel!
    @IBOutlet var rangedLabel2: UILabel!
    
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var questionProgressView: UIProgressView!
    
    
    var questions: [Question] = [
        Question(
            text: "Which food do you like the most?",
            type: .single,
            answers: [
                Answer(text: "Steak", type: .dog),
                Answer(text: "Fish", type: .cat),
                Answer(text: "Carrots", type: .rabbit),
                Answer(text: "Corn", type: .turtle)
            ]
        ),
        
        Question(
            text: "Which activities do you enjoy?",
            type: .multiple,
            answers: [
                Answer(text: "Swimming", type: .turtle),
                Answer(text: "Sleeping", type: .cat),
                Answer(text: "Cuddling", type: .rabbit),
                Answer(text: "Eating", type: .dog)
            ]
        ),
        
        Question(
            text: "How much do you enjoy car rides?",
            type: .ranged,
            answers: [
                Answer(text: "I dislike them", type: .cat),
                Answer(text: "I get a little nervous", type: .rabbit),
                Answer(text: "I barely notice them", type: .turtle),
                Answer(text: "I love them", type: .dog)
            ]
        )
    ]
    var questionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
    }
    
    func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }
    
    func updateRangedStack(using answers: [Answer]) {
        rangedStackView.isHidden = false
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }
    
    func updateUI() {
        let question = questions[questionIndex]
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        //display the question
        questionLabel.text = question.text
        
        //display correct input controls
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        let currentAnswers = question.answers
        switch question.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateRangedStack(using: currentAnswers)
        }
        
        //display answer choices
        
        //update progress view
        questionProgressView.progress = Float(questionIndex + 1) / Float(questions.count)
        
        //reset controls back to default state
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
