//
//  ViewController.swift
//  IOS-PREWORK
//
//  Created by Yuga Suzuki on 8/19/23.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var clearText: UIButton!
    
    @IBOutlet var secondButton: UIButton!
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var name: UILabel!
    
    @IBOutlet var school: UILabel!
    
    @IBOutlet var job: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        
           secondButton.backgroundColor = UIColor.red
           secondButton.layer.cornerRadius = 8
           secondButton.layer.cornerRadius = secondButton.frame.height / 2
           secondButton.setTitleColor(UIColor.white, for: .normal)
           
           secondButton.layer.shadowColor = UIColor.green.cgColor
           secondButton.layer.shadowRadius = 10
           secondButton.layer.shadowOpacity = 0.5
           secondButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        
        clearText.backgroundColor = UIColor.green
        clearText.layer.cornerRadius = 8
        clearText.layer.cornerRadius = secondButton.frame.height / 2
        clearText.setTitleColor(UIColor.white, for: .normal)
        
        clearText.layer.shadowColor = UIColor.yellow.cgColor
        clearText.layer.shadowRadius = 10
        clearText.layer.shadowOpacity = 0.5
        clearText.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
    
    
    
    @IBAction func setText(_ sender: Any) {
        
        label.text = textField.text
        label.textColor = UIColor.red
        name.textColor = UIColor.red
        school.textColor = UIColor.red
        job.textColor = UIColor.red
    }
    
    @IBAction func clearText(_ sender: Any) {
        
        label.text = ""
        name.textColor = UIColor.black
        school.textColor = UIColor.black
        job.textColor = UIColor.black
    }
   
  
    
      
    
    
    
    
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
        


}

