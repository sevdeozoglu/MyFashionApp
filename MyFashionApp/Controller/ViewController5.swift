//
//  ViewController5.swift
//  MyFashionApp
//
//  Created by Sevde Özoğlu on 13.12.2018.
//  Copyright © 2018 Sevde Özoğlu. All rights reserved.
//

import UIKit

class ViewController5: UIViewController, storiesProtocol {
    
    
    func storiesNum(level2: Int) {}
    
     @IBOutlet weak var LabelBtn1: UIButton!
   
    @IBOutlet weak var lowInt2Btn: UIButton!
    
    @IBOutlet weak var intermediateBtn: UIButton!
    
     @IBOutlet weak var advanced2Btn: UIButton!
    
    @IBAction func backToMain(_ sender: Any) {
        
        performSegue(withIdentifier: "backToMainMenu", sender: self)
        
    }
    
    
    func storiesLevel(level: String) {}
    
    var btnName = ""
    var tut2 = 3
    
    @IBOutlet weak var shortStories: UILabel!
    
    @IBAction func beginnerBtn(_ sender: Any) {
        
        btnName = LabelBtn1.currentTitle!
        tut2 = 1
        performSegue(withIdentifier: "beginner", sender: self)
        
        
    }
    
    @IBAction func lowIntBtn(_ sender: Any) {
        
        btnName = lowInt2Btn.currentTitle!
        tut2 = 2
        performSegue(withIdentifier: "low", sender: self)
        
        
    }
    
    
   
    
    @IBAction func intermBtn(_ sender: Any) {
        
        btnName = intermediateBtn.currentTitle!
         tut2 = 3
        performSegue(withIdentifier: "intermediate", sender: self)
       
        
    }
    
    
    @IBAction func advancedBtn(_ sender: Any) {
        
        btnName = advanced2Btn.currentTitle!
        tut2 = 4
        performSegue(withIdentifier: "advanced", sender: self)
        
        
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "beginner"
        {
            
            let storiesVC = segue.destination as! ViewController6
            storiesVC.level = btnName
            storiesVC.level2 = tut2
            storiesVC.delegate = self
            
        }
        else if segue.identifier == "low"
        {
            
            let storiesVC = segue.destination as! ViewController6
            storiesVC.level = btnName
            storiesVC.level2 = tut2
            storiesVC.delegate = self
            
        }
        
        else if segue.identifier == "intermediate"
        {
            
            let storiesVC = segue.destination as! ViewController6
            storiesVC.level = btnName
            storiesVC.level2 = tut2
            storiesVC.delegate = self
            
        }
        else if segue.identifier == "advanced"
        {
            
            let storiesVC = segue.destination as! ViewController6
            storiesVC.level = btnName
            storiesVC.level2 = tut2
            storiesVC.delegate = self
            
        }
        
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
