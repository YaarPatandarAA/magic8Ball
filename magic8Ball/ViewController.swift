//
//  ViewController.swift
//  magic8Ball
//
//  Created by Amarjit Singh on 11/28/18.
//  Copyright © 2018 Amarjit Singh. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    let magicBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var ballIndex = 0

    @IBOutlet weak var magicBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButton(_ sender: UIButton) {
        updateMagicBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagicBall()
    }
    
    func updateMagicBall(){
        ballIndex = Int.random(in: 0 ... 4)
        magicBall.image = UIImage.init(named: magicBallArray[ballIndex])
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
}

