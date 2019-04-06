//
//  ViewController.swift
//  MyFashionApp
//
//  Created by Sevde Özoğlu on 10.12.2018.
//  Copyright © 2018 Sevde Özoğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleButton: UILabel!
    
    @IBAction func grammarButton(_ sender: Any) {
        
        performSegue(withIdentifier: "englishGrammar", sender: self)
        
    }
    
    @IBAction func storiesButton(_ sender: Any) {
        
        performSegue(withIdentifier: "shortStoriesSegue", sender: self)
        
    }
    
    @IBAction func quizButton(_ sender: Any) {
        
        performSegue(withIdentifier: "quizSegue", sender: self)
        
    }
    
    @IBAction func tasksButton(_ sender: Any) {
    }
    
    @IBAction func mistakesButton(_ sender: Any) {
    }
 
    @IBAction func nativesButton(_ sender: Any) {
    }
    
    @IBAction func dicButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

