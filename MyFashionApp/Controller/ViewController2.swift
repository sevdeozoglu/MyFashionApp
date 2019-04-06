//
//  ViewController2.swift
//  MyFashionApp
//
//  Created by Sevde Özoğlu on 11.12.2018.
//  Copyright © 2018 Sevde Özoğlu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, CanReceive, CanReceive2 {
    
    
    
    func dataReceived6(data6: String) {}
    func dataReceived5(data5: String) {}
    func dataReceived4(data4: Int) {}
    func dataReceived3(data3: String) {}
    

    var kategoriler = ["Select","Tenses","Modals","Passive Structures","If & Wish Clauses","Noun Classes","Reported Speech","Gerunds & Infinitives","Adjectives & Adverbs","Nouns, Pronouns, Articles and Quantifiers","Relative Clauses","Conjunctions & Transitions","Prepositions","Phrasal Verbs"]
    
  //  var altKategoriler =  [["pop","rock"],["a","b"],["x","y"],["x","y"],["x","y"],["x","y"],["x","y"],["x","y"],["x","y"],["x","y"],["x","y"],["x","y"],["x","y"]]

    @IBOutlet weak var grammarLabel: UILabel!
    @IBOutlet weak var grammarPicker: UIPickerView!
    var secondVC = ""
    var vc = 0
    
    let alertController = UIAlertController(title: "Error", message:
        "Select Something", preferredStyle: UIAlertControllerStyle.alert)
   
    @IBAction func goBtn(_ sender: Any) {
        
        performSegue(withIdentifier: "go3VC", sender: self)
        
    }
    
    @IBAction func go1Button(_ sender: Any) {
        
        performSegue(withIdentifier: "go1Segue", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        grammarPicker.delegate = self
        grammarPicker.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return kategoriler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return kategoriler[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print(row)
        vc = row
        
        if row == 0 {
            
            secondVC = ""
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
        }
        
        else{
            secondVC = kategoriler[row]}
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "go3VC" {
            
            let thirdVC = segue.destination as! ViewController3
            thirdVC.data = secondVC
            thirdVC.data2 = vc
            thirdVC.delegate = self
            
        }
        
        else if segue.identifier == "finalSegue2" {
            
            let fifthVC = segue.destination as! ViewController4
            fifthVC.data4 = vc
            fifthVC.delegate = self
            
            
        }
        
        
        
    }
    
    func dataReceived(data: String) {
        
        
        
    }
    
    func dataReceived2(data2: Int) {
        
        
        
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
