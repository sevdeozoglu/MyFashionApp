//
//  question.swift
//  MyFashionApp
//
//  Created by Sevde Özoğlu on 17.12.2018.
//  Copyright © 2018 Sevde Özoğlu. All rights reserved.
//

import Foundation

class question {
    
    let answer : Bool
    let questionText : String
    
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
