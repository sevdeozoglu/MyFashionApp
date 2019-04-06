//
//  ViewController3.swift
//  MyFashionApp
//
//  Created by Sevde Özoğlu on 11.12.2018.
//  Copyright © 2018 Sevde Özoğlu. All rights reserved.
//

import UIKit

protocol CanReceive {
    
    func dataReceived(data :String)
    func dataReceived2(data2 :Int)
}

class ViewController3: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, CanReceive2 {
    
    
    func dataReceived3(data3: String) {}
    func dataReceived5(data5: String) {}
    func dataReceived4(data4: Int) {}
    func dataReceived6(data6: String) {}
    
    var delegate : CanReceive?
    var data = ""
    var data2 = 0
    var readString = ""
    var fileURL = Bundle.main.path(forResource: "passiveStructures", ofType: "txt")

    
    let alertController2 = UIAlertController(title: "Error", message:
        "Please Give The Activity A Name!",preferredStyle:UIAlertControllerStyle.alert)
    
    var pickerString:String = "Select"
   
    
    var kategoriler2 = ["Select","Simple Present Tense","Present Perfect Tense","Present Continuous Tense","Simple Past Tense","Past Perfect Tense","Past Continuous Tense","Past Perfect Continuous Tense","Simple Future Tense","Future Perfect Tense","Future Continuous Tense","Future Perfect Continuous Tense","Present Perfect Continuous Tense"]
    
     var kategoriler3 = ["Select","Modals I","Modals II","Modals III","Modals IV","Modals V","Used to & Would","Other Modals"]
    
     var kategoriler4 = ["Select","Passive Voice"]
    
     var kategoriler5 = ["Select","If Clauses","Wish Clauses"]
    
     var kategoriler6 = ["Select","Noun Classes"]
    
     var kategoriler7 = ["Seçiniz","Reported Speech"]
    
    var kategoriler8 = ["Select","Gerund","Infinitive"]
    
    var kategoriler9 = ["Select","Adjectives","Adverbs","Participles","The Comparison Of Adjective, Adverbs And Nouns"]
    
    var kategoriler10 = ["Select","Nouns","Pronouns","Articles","Quantifiers"]
    
    var kategoriler11 = ["Select","Relative Clauses","Adverb Clauses"]
    
    var kategoriler12 = ["Select","Conjunctions"]
    
    var kategoriler13 = ["Select","Prepositions"]
    
    var kategoriler14 = ["Select","Phrasal Verbs"]
    
    var tut = 0
    var baslik = ""
    
    @IBOutlet weak var go1Label: UILabel!
    
    @IBOutlet weak var go1Picker: UIPickerView!
    
    @IBAction func goBtn2(_ sender: Any) {
        
        performSegue(withIdentifier: "finalSegue", sender: self)
        
    }
    
    @IBOutlet weak var goBtn2Outlet: UIButton!
    
    
    @IBAction func go2Button(_ sender: Any) {
        
        performSegue(withIdentifier: "go2Segue", sender: self)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        go1Picker.delegate = self
        go1Picker.dataSource = self
        go1Label.text = data
        go1Picker.selectRow(0, inComponent: 0, animated: false)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component2: Int) -> Int {
       
       switch data2 {
            
        case 1:
             return kategoriler2.count
        case 2 :
             return kategoriler3.count
        case 3 :
             return kategoriler4.count
        case 4 :
            return kategoriler5.count
        case 5 :
            return kategoriler6.count
        case 6 :
            return kategoriler7.count
        case 7 :
            return kategoriler8.count
        case 8 :
            return kategoriler9.count
        case 9 :
            return kategoriler10.count
        case 10 :
            return kategoriler11.count
        case 11 :
            return kategoriler12.count
        case 12 :
            return kategoriler13.count
        case 13 :
            return kategoriler14.count
            
        default :
            return 3
            
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row2: Int, forComponent component2: Int) -> String? {
        
        switch data2 {
            
        case 1 :
            tut = 0
            return kategoriler2[row2]
        case 2 :
            tut = 1
            return kategoriler3[row2]
        case 3 :
            tut = 2
            return kategoriler4[row2]
        case 4 :
            tut = 3
            return kategoriler5[row2]
        case 5 :
            tut = 4
            return kategoriler6[row2]
        case 6 :
            tut = 5
            return kategoriler7[row2]
        case 7 :
            tut = 6
            return kategoriler8[row2]
        case 8 :
            tut = 7
            return kategoriler9[row2]
        case 9 :
            tut = 8
            return kategoriler10[row2]
        case 10 :
            tut = 9
            return kategoriler11[row2]
        case 11 :
            tut = 10
            return kategoriler12[row2]
        case 12 :
            tut = 11
            return kategoriler13[row2]
        case 13 :
            tut = 12
            return kategoriler14[row2]
            
        default :
            return String(describing: Error.self)
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row2: Int, inComponent component2: Int) {
        if tut == 0 {
            
            switch row2 {
                
            case 0:
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "simplePresent", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler2[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 2 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "presentPerfect", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler2[2]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            case 3 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "presentContinuous", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler2[3]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 4 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "simplePast", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler2[4]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 5 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "pastperfect", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler2[5]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 6 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "pastCon", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler2[6]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 7 :
                    goBtn2Outlet.isEnabled = true
                    fileURL = Bundle.main.path(forResource: "pastPerfectCon", ofType: "txt")
                    do {
                        
                        readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                        baslik = kategoriler2[7]
                        
                    } catch let error as NSError {
                        print("Failed to read file")
                        print(error)
                        
                }
            case 8 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "simpleFuture", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler2[8]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 9 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "futurePerfect", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler2[9]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 10 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "futureCon", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler2[10]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 11 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "futurePerfectCon", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler2[11]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 12 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "presentPerfectCon", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler2[12]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            default:
                  alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                  self.present(alertController2, animated: true, completion: nil)
            }
        }
        
      else if  tut == 1 {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "modalsI", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler3[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 2 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "modalsII", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler3[2]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            case 3 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "modalsIII", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler3[3]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 4 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "modalsIV", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler3[4]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 5 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "modalsV", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler3[5]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 6 :
                    goBtn2Outlet.isEnabled = true
                    fileURL = Bundle.main.path(forResource: "usedToWould", ofType: "txt")
                    do {
                        
                        readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                        baslik = kategoriler3[6]
                        
                    } catch let error as NSError {
                        print("Failed to read file")
                        print(error)
                        
                }
            case 7 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "otherModals", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler3[7]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }
        
        }
        
        else if tut == 2 {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "passiveStructures", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler4[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }
            
        }
        
        else if tut == 3 {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "if", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler5[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            case 2 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "wish", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler5[2]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }

        }
        
        else if tut == 4 {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "noun", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler6[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }
            
        }
        
        else if tut == 5 {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "reportedSpeech", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler7[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }
            
        }
        
        else if tut == 6 {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "gerund", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler8[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            case 2 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "infinitive", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler8[2]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }
            
        }
        
        else if  tut == 7 {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "adj", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler9[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 2 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "adv", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler9[2]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            case 3 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "par", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler9[3]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 4 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "comp", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler9[4]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }
            
        }
        
        else if  tut == 8 {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "nouns", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler10[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 2 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "pronouns", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler10[2]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            case 3 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "articles", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler10[3]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            case 4 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "quan", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler10[4]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }
            
        }
        else if tut == 9 {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "relative", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler11[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            case 2 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "adverb", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler11[2]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }
            
        }
        
        else if tut == 10 {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "conj", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler12[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }
           
        }
        
        else if tut == 11 {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "prepo", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler13[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }
            
        }
        
        else {
            
            switch row2 {
                
            case 0 :
                goBtn2Outlet.isEnabled = false
                
            case 1 :
                goBtn2Outlet.isEnabled = true
                fileURL = Bundle.main.path(forResource: "phrasal", ofType: "txt")
                do {
                    
                    readString = try String(contentsOfFile: fileURL!, encoding: String.Encoding.utf8)
                    baslik = kategoriler14[1]
                    
                } catch let error as NSError {
                    print("Failed to read file")
                    print(error)
                    
                }
                
            default:
                alertController2.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController2, animated: true, completion: nil)
            }
            
        }
        
        print(tut)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finalSegue" {
            
            let fourthVC = segue.destination as! ViewController4
            fourthVC.data4 = data2
            fourthVC.data3 = readString
            fourthVC.delegate = self
            fourthVC.data5 = data
            fourthVC.data6 = baslik
            
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
