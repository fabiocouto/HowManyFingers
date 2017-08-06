//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Fábio do Couto Oliveira on 6/25/17.
//  Copyright © 2017 Fábio do Couto Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textGuess: UITextField!
    
    @IBOutlet weak var guessResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func guessAction(_ sender: Any) {
      print("button pressed!")
      compareResult()
        
    }
    
   
    func compareResult(){
    
        let fingers:UInt32 = arc4random_uniform(6)
        let input = Int(textGuess.text!)
        
        if input! > 0 {
    
            if (Int(fingers) == input){
        
            guessResult.text = "Yeah! You are right!!!"
            guessResult.textColor = UIColor.green
        
            } else {
        
            guessResult.text = "Wrong! It was a\(fingers). Try it again!"
            guessResult.textColor = UIColor.red
        
        }
    }
        
    
    }
    

}

