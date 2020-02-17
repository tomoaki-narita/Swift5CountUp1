//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by output. on 2020/02/17.
//  Copyright © 2020 tomoaki narita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countUpLabel: UILabel!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countUpLabel.text = "0"
        
        
        
    }
    
    @IBAction func plus(_ sender: Any) {
        
        count = count + 1
        
        countUpLabel.text = String(count)
        
        if count >= 10{
            
            changeTextColor()
        }
        
        
    }
    

    @IBAction func minus(_ sender: Any) {
        
        count = count - 1
        
        countUpLabel.text = String(count)
        
        if count <= 10{
            
            resetColor()
            
        }
        
        
    }
    
    func changeTextColor(){
        
        countUpLabel.textColor = .yellow
        
        
    }
    
    func resetColor(){
        
        countUpLabel.textColor = .white
        
    
    }
    
    
    
}

