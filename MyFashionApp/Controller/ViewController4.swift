//
//  ViewController4.swift
//  MyFashionApp
//
//  Created by Sevde Özoğlu on 11.12.2018.
//  Copyright © 2018 Sevde Özoğlu. All rights reserved.
//

import UIKit

protocol CanReceive2 {
    
    func dataReceived3(data3 :String)
    func dataReceived4(data4 :Int)
    func dataReceived5(data5 :String)
    func dataReceived6(data6 :String)
}

class ViewController4: UIViewController, CanReceive {
    
    var data3 = ""
    var data4 = 0
    var data5 = ""
    var data6 = ""
    
    func dataReceived(data: String) {
        
    }
    
    func dataReceived2(data2: Int) {
        
    }
    
    
    var delegate : CanReceive2?
   

    @IBOutlet weak var go2Label: UILabel!
    
    @IBOutlet weak var go2Text: UITextView!
    
    @IBAction func finalBtn(_ sender: Any) {
       
        performSegue(withIdentifier: "finalSegue2", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        go2Text.text = data3
        go2Label.text = data6
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finalSegue2" {
            
            let sixthVC = segue.destination as! ViewController3
            
           sixthVC.data2 = data4
           sixthVC.delegate = self
           sixthVC.data = data5
            
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
