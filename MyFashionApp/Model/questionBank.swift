//
//  questionBank.swift
//  MyFashionApp
//
//  Created by Sevde Özoğlu on 17.12.2018.
//  Copyright © 2018 Sevde Özoğlu. All rights reserved.
//

import Foundation

class questionBank {
    
    var list = [question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = question(text: "Blabla", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(question(text: "aaaaa", correctAnswer: true))
        
        list.append(question(text: "bbb", correctAnswer: true))
        
        list.append(question(text: "ccc", correctAnswer: true))
        
        list.append(question(text: "ddd", correctAnswer: true))
        
        list.append(question(text: "fff", correctAnswer: false))
        
        list.append(question(text: "ggg", correctAnswer: true))
        
        list.append(question(text: "hhh", correctAnswer: false))
        
        list.append(question(text: "iii", correctAnswer: true))
        
        list.append(question(text: "jjj", correctAnswer: true))
        
        list.append(question(text: "kkk", correctAnswer: false))
        
        list.append(question(text: "lll", correctAnswer: false))
        
        list.append(question(text: "mmm", correctAnswer: true))
    }
    
}
