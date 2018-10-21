//
//  ViewController.swift
//  Quizma
//
//  Created by Aravind siva on 21/10/18.
//  Copyright © 2018 Aravind siva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionList()
    var userPickedAnswer: Bool = false

    
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var labelProgress: UILabel!
    @IBOutlet weak var ProgressBar: UIView!
    @IBOutlet weak var labelScore: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let firstQuestion = allQuestions.list[0]
        labelQuestion.text = firstQuestion.questionText
        

    }
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            userPickedAnswer = true
        }
        else if sender.tag == 2 {
            userPickedAnswer = false
        }
        
        checkAnswer()
    }
    
    
    func updateUI() {
        
    }
    
    
    func nextQuestion() {
        
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[0].answer
        
        if correctAnswer == userPickedAnswer {
            
        }
        else {
            
        }
        
    }
    
    
    func startOver() {
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }


}

