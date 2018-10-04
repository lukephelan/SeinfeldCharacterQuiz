//
//  QuestionData.swift
//  SeinfeldCharacterQuiz
//
//  Created by Luke Phelan on 3/10/18.
//  Copyright © 2018 Luke Phelan. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: SeinfeldCharacter
}

enum SeinfeldCharacter: String {
    case jerry = "Jerry", george = "George", elaine = "Eaine", kramer = "Kramer"
    
    var definition: String {
        switch self {
        case .jerry:
            return "You are Jerry Seinfeld!"
        case .george:
            return "You are George Costanza!"
        case .elaine:
            return "You are Elaine Benes!"
        case .kramer:
            return "You are Cosmo Kramer!"
        }
    }
}
