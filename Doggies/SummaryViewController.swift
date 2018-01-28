//
//  SummaryViewController.swift
//  Doggies
//
//  Created by Lauren Tang on 1/27/18.
//  Copyright © 2018 Lauren Tang. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    
    var answers:Answers = Answers()

    @IBOutlet weak var nameTextField: UITextView!
    @IBOutlet weak var answer1: UITextView!
    @IBOutlet weak var answer2: UITextView!
    @IBOutlet weak var answer3: UITextView!
    @IBOutlet weak var answer4: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(answers)
        nameTextField.text = answers.name
        answer1.text = answers.answer1
        answer2.text = answers.answer2
        answer3.text = answers.answer3
        answer4.text = answers.answer4
       
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
