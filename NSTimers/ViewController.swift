//
//  ViewController.swift
//  NSTimers
//
//  Created by Cory Franks on 2/11/17.
//  Copyright © 2017 Cory Franks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var timer = Timer()
    var counter = 0
    //variables to call timer and have the timer set at zero
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func start(_ sender: Any) {
        
        //counter = 0
        //label.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updatecounter), userInfo: nil, repeats: true)
        //button calls timer and then timer calls updatecounter func to add X number to label every second
    }
    
    
    func updatecounter() {
        
        counter += 1
        label.text = String(counter)
        
        //adds +1 timer and then displays in label via String
    }

    @IBAction func stop(_ sender: Any) {
        
        timer.invalidate()
        
        //button to stop timer
    }

}

