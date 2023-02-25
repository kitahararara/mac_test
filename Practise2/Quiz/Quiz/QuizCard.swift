//
//  QuizCard.swift
//  Quiz
//
//  Created by kenichi kitahara on 2023/02/21.
//

import UIKit

class QuizCard: UIView {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var quizImageView: UIImageView!
    @IBOutlet weak var quizLabel: UILabel!
    
    enum QuizStyle {
        case initial
        case right
        case wrong
    }
    
    var style: QuizStyle = .initial {
        didSet {
            self.setQuizStyle(style: style)
        }
    }
    
    func setQuizStyle(style: QuizStyle) {
        switch style {
        case .initial:
            self.backgroundColor = UIColor(named: "normal background")
            self.iconImageView.isHidden = true
        case .right:
            self.backgroundColor = UIColor(named: "right background")
            self.iconImageView.isHidden = false
            self.iconImageView.image = UIImage(named: "right icon")
        case .wrong:
            self.backgroundColor = UIColor(named: "wrong background")
            self.iconImageView.isHidden = false
            self.iconImageView.image = UIImage(named: "wrong icon")
        }
    }
}
