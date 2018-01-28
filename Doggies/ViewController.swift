//
//  ViewController.swift
//  Doggies
//
//  Created by Lauren Tang on 1/27/18.
//  Copyright © 2018 Lauren Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var answers:Answers = Answers()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let text = nameTextField?.text {
            answers.name = text
        }
        if let answer1 = answer1?.text {
            answers.answer1 = answer1
        }
        if let answer2 = answer2?.text {
            answers.answer2 = answer2
        }
        if let answer3 = answer3?.text {
            answers.answer3 = answer3
        }
        if let answer4 = answer4?.text {
            answers.answer4 = answer4
        }
        
        (segue.destination as? SummaryViewController)?.answers = answers
        (segue.destination as? ViewController)?.answers = answers
    }
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.view.endEditing(true)
        
        return true
        
    }
    
    @IBOutlet weak var nameTextField: UITextField?
    @IBOutlet weak var answer1: UITextField?
    @IBOutlet weak var answer2: UITextField?
    @IBOutlet weak var answer3: UITextField?
    @IBOutlet weak var answer4: UITextField?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func welcomeScreenButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goToIntroduction", sender:self)
    }
    
    @IBAction func startQuestions(_ sender: Any) {
        self.performSegue(withIdentifier: "goFirstQuestion", sender:self)
    }
    
    @IBAction func nextQuestion1(_ sender: Any) {
        self.performSegue(withIdentifier: "goSecondQuestion", sender: self)
        
    }

    @IBAction func nextQuestion2(_ sender: Any) {
        self.performSegue(withIdentifier: "goThirdQuestion", sender: self)
    }
    
    //
    @IBAction func nextQuestion3(_ sender: Any) {
        self.performSegue(withIdentifier: "goFourthQuestion", sender: self)
    }
    @IBAction func nextQuestion4(_ sender: Any) {
        self.performSegue(withIdentifier: "goFifthQuestion", sender: self)
    }
    
    @IBAction func toSummary(_ sender: Any) {
        
        self.performSegue(withIdentifier: "goToSummary", sender: self)
        
    }
    @IBAction func makeMatch(_ sender: Any) {
        self.performSegue(withIdentifier: "makeMatch", sender:self)
        
    }
    
    
}

