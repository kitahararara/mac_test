//
//  Quiz.swift
//  Quiz
//
//  Created by kenichi kitahara on 2023/02/23.
//

import UIKit

class Quiz {
    let text: String
    let correctAnswer: Bool
    let imageName: String
    
    init(text: String, correctAnswer: Bool, imageName:String) {
        self.text = text
        self.correctAnswer = correctAnswer
        self.imageName = imageName
    }
}
