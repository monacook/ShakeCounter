//
//  ViewController.swift
//  Shakeit
//
//  Created by Mona Cook on 5/2/17.
//  Copyright © 2017 Mona Cook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var panda = 0
    
    @IBOutlet weak var shakeLabel: UILabel!
    
    override func becomeFirstResponder()  -> Bool {
        
        return true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        if motion == .motionShake {
            panda += 1
            shakeLabel.text = "\(panda)"
            print (panda)
        }
        
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

