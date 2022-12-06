//
//  QuestionData.swift
//  Personality Quiz
//
//  Created by Mathew Soto on 12/5/22.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType //single, multiple, ramged
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: AnimalType //dog, cat, rabbit, turtle
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}

enum ResponseType {
    case single, multiple, ranged
}
