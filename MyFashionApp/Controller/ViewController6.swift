//
//  ViewController6.swift
//  MyFashionApp
//
//  Created by Sevde Özoğlu on 13.12.2018.
//  Copyright © 2018 Sevde Özoğlu. All rights reserved.
//

import UIKit

protocol storiesProtocol {
    func storiesLevel(level: String)
    func storiesNum(level2: Int)
}

class ViewController6: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource, stories2Protocol {
    
    
    func stories5(level7: String) {}
    func stories3(level5: [String]) {}
    func stories2(level4: Int) {}
    func stories4(level6 : String) {}
    
    
    var level = ""
    var level2 = 0
    var satir = 0
    var dizi = [""]
    var storiesTitle = ""
    
    var beginnerSeries = ["Select","aaa","bbb","ccc"]
    var lowSeries = ["Select","ddd","eee"]
    var intermediateSeries = ["Select","ggg","hhh","iii","tyh"]
    var advancedSeries = ["Select","jjj"]

    @IBOutlet weak var storiesLabel: UILabel!
    
    @IBOutlet weak var storiesPicker: UIPickerView!
    
    func stories(level3: Int) {}
    
    @IBAction func storiesBackBtn(_ sender: Any) {
        
        performSegue(withIdentifier: "2back2", sender: self)
        
        
    }
    @IBAction func storiesGoBtn(_ sender: Any) {
        
        performSegue(withIdentifier: "2go2", sender: self)
        
    }
    
    var delegate : storiesProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storiesLabel.text = level
        storiesPicker.dataSource = self
        storiesPicker.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if level2 == 1 {
            
            return beginnerSeries.count
            
        }
        
        else if level2 == 2 {
            
            return lowSeries.count
            
        }
        
        else if level2 == 3 {
            
          return intermediateSeries.count
            
        }
        
        else if level2 == 4 {
            
           return advancedSeries.count
            
        }
        
        else {return Int(errno)}
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if level2 == 1 {
            
            dizi = beginnerSeries // diziyi controller7 ye attım belki lazım olabilir.
            return beginnerSeries[row]
            
        }
            
        else if level2 == 2 {
            
            return lowSeries[row]
            
        }
            
        else if level2 == 3 {
            
            return intermediateSeries[row]
            
        }
            
        else if level2 == 4 {
            
            return advancedSeries[row]
            
        }
            
        else {return "Error"}
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        satir = row
        if level2 == 1 {
    
            storiesTitle = beginnerSeries[row]
            
        }
            
        else if level2 == 2 {
            
            storiesTitle = lowSeries[row]
            
        }
            
        else if level2 == 3 {
            
            storiesTitle = intermediateSeries[row]
            
        }
            
        else if level2 == 4 {
            
            storiesTitle = advancedSeries[row]
            
        }
            
        else {print(Error.self)}
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "2go2"
        {
            
            let stories2VC = segue.destination as! ViewController7
            stories2VC.level3 = level2
            stories2VC.level4 = satir
            stories2VC.level5 = dizi
            stories2VC.level6 = storiesTitle
            stories2VC.level7 = level
            stories2VC.delegate = self
            
            
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
}
