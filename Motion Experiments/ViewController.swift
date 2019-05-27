//
//  ViewController.swift
//  Motion Experiments
//
//  Created by Alex on 5/27/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let manager = CMMotionActivityManager()
        manager.startActivityUpdates(to: .main) { (activity) in
            guard let activity = activity else {
                return
            }
            
            var modes: Set<String> = []
            if activity.walking {
                modes.insert("🚶‍")
            }
            
            if activity.running {
                modes.insert("🏃‍")
            }
            
            if activity.cycling {
                modes.insert("🚴‍")
            }
            
            if activity.automotive {
                modes.insert("🚗")
            }
            
            print(modes.joined(separator: ", "))
        }
    }


}

