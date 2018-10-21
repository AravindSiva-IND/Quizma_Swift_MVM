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
    var questionNumber: Int = 0
    var score:Int = 0

    
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var labelProgress: UILabel!
    @IBOutlet weak var ProgressBar: UIView!
    @IBOutlet weak var labelScore: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let firstQuestion = allQuestions.list[questionNumber]
//        labelQuestion.text = firstQuestion.questionText
        nextQuestion()

    }
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            userPickedAnswer = true
        }
        else if sender.tag == 2 {
            userPickedAnswer = false
        }
        
        checkAnswer()
        questionNumber =  questionNumber + 1
        nextQuestion()
    }
    
    
    func updateUI() {
        labelScore.text = "Score: \(score)"
        labelProgress.text = "\(questionNumber + 1)/13"
        ProgressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
        print(ProgressBar.frame.size.width)
    }
    
    
    func nextQuestion() {
        if questionNumber <= 12 {
            labelQuestion.text = allQuestions.list[questionNumber].questionText
            updateUI()
        }
        else {
            print("End")
            let alert = UIAlertController(title: "Great!", message: "You're done! Want to retake Test?", preferredStyle: .alert)
            let action = UIAlertAction(title: "Retake", style: .default, handler: { (UIAlertAction) in
                
                self.startOver()
            })
            
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == userPickedAnswer {
            ProgressHUD.showSuccess("Correct")
            score += 1
        }
        else {
            ProgressHUD.showError("Wrong!")
        }
        
    }
    
    
    func startOver() {
        score = 0
        questionNumber = 0
        nextQuestion()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }


}

