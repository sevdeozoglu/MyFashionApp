//
//  ViewController7.swift
//  MyFashionApp
//
//  Created by Sevde Özoğlu on 13.12.2018.
//  Copyright © 2018 Sevde Özoğlu. All rights reserved.
//

import UIKit

protocol stories2Protocol {
    func stories(level3 : Int)
    func stories2(level4 : Int)
    func stories3(level5 : [String])
    func stories4(level6 : String)
    func stories5(level7 : String)
}

class ViewController7: UIViewController,storiesProtocol {
    
    
    func storiesLevel(level: String) {}
    
    func storiesNum(level2: Int) {}
    
    
    
    var level3 = 1
    var level4 = 0
    var level5 = [""]
    var level6 = ""
    var level7 = ""
    var file2URL = Bundle.main.path(forResource: "aaa", ofType: "txt")
    
    var delegate : stories2Protocol?
    
    @IBOutlet weak var storiesTitleLabel: UILabel!
    @IBOutlet weak var storiesTxt: UITextView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bul()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stories2Back(_ sender: Any) {
        
            performSegue(withIdentifier: "2back3", sender: self)
    }
    
    
    func bul() {
        
        if level3 == 1 {
            
            
            switch level4 {
                
            case 1 :
                file2URL = Bundle.main.path(forResource: "aaa", ofType: "txt")
                do {
                    
                    storiesTxt.text = try String(contentsOfFile: file2URL!, encoding: String.Encoding.utf8)
                    storiesTitleLabel.text = level6
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 2 :
                file2URL = Bundle.main.path(forResource: "bbb", ofType: "txt")
                do {
                    
                    storiesTxt.text = try String(contentsOfFile: file2URL!, encoding: String.Encoding.utf8)
                    storiesTitleLabel.text = level6
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            case 3 :
                file2URL = Bundle.main.path(forResource: "ccc", ofType: "txt")
                do {
                    
                    storiesTxt.text = try String(contentsOfFile: file2URL!, encoding: String.Encoding.utf8)
                    storiesTitleLabel.text = level6
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }

            default:
                print(Error.self)
            }
            
            
        }
        
        else if level3 == 2 {
            
            switch level4 {
            
            case 1 :
            file2URL = Bundle.main.path(forResource: "ddd", ofType: "txt")
            do {
                
                storiesTxt.text = try String(contentsOfFile: file2URL!, encoding: String.Encoding.utf8)
                storiesTitleLabel.text = level6
                //     storiesTitleLabel =
            } catch let error as NSError {
                print("Failed to read file")
                print(error)
                
            }
            case 2 :
            file2URL = Bundle.main.path(forResource: "eee", ofType: "txt")
            do {
                
                storiesTxt.text = try String(contentsOfFile: file2URL!, encoding: String.Encoding.utf8)
                storiesTitleLabel.text = level6
                
            } catch let error as NSError {
                print("Failed to read file")
                print(error)
                
            }
            
            
            default:
            print(Error.self)
        }
    
        }
        else if level3 == 3 {
            
            switch level4 {
                
            case 1 :
                file2URL = Bundle.main.path(forResource: "ggg", ofType: "txt")
                do {
                    
                    storiesTxt.text = try String(contentsOfFile: file2URL!, encoding: String.Encoding.utf8)
                    storiesTitleLabel.text = level6
                    //     storiesTitleLabel =
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 2 :
                file2URL = Bundle.main.path(forResource: "hhh", ofType: "txt")
                do {
                    
                    storiesTxt.text = try String(contentsOfFile: file2URL!, encoding: String.Encoding.utf8)
                    storiesTitleLabel.text = level6
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            case 3 :
                file2URL = Bundle.main.path(forResource: "iii", ofType: "txt")
                do {
                    
                    storiesTxt.text = try String(contentsOfFile: file2URL!, encoding: String.Encoding.utf8)
                    storiesTitleLabel.text = level6
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            case 4 :
                file2URL = Bundle.main.path(forResource: "tyh", ofType: "txt")
                do {
                    
                    storiesTxt.text = try String(contentsOfFile: file2URL!, encoding: String.Encoding.utf8)
                    storiesTitleLabel.text = level6
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            default:
                print(Error.self)
            }
            
            
            
        }
        
        else if level3 == 4 {
            
            switch level4 {
                
            case 1 :
                file2URL = Bundle.main.path(forResource: "jjj", ofType: "txt")
                do {
                    
                    storiesTxt.text = try String(contentsOfFile: file2URL!, encoding: String.Encoding.utf8)
                    storiesTitleLabel.text = level6
                    //     storiesTitleLabel =
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            
            default:
                print(Error.self)
            }
            
            
            
        }
        
        else {
            
            
            return print(Error.self)
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "2back3"
        {
            
            let stories3VC = segue.destination as! ViewController6
            stories3VC.level2 = level3
            stories3VC.level = level7
            stories3VC.delegate = self
            
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
