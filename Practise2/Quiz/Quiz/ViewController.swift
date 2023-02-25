//
//  ViewController.swift
//  Quiz
//
//  Created by kenichi kitahara on 2023/02/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    //let quizzes = ["猫は人間を超でっかいネコだと思っている？",
    //               "イヌは食べ物の美味しさを味よりも匂いで判断している？",
    //               "トラのしましま模様は皮膚まで繋がっていない？"]
    
    var date = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let quizViewController =
            segue.destination as? QuizViewController {
            if let text = self.nameTextField.text {
                quizViewController.nameText = text
            }
        }
    }


    @IBAction func pressButton(_ sender: Any) {
    }
}

