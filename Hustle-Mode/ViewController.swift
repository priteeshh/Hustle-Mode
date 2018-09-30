//
//  ViewController.swift
//  Hustle-Mode
//
//  Created by Preeteesh Remalli on 30/09/18.
//  Copyright © 2018 Preeteesh Remalli. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    @IBOutlet weak var BGView: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleModeLbl: UILabel!
    @IBOutlet weak var onLBL: UILabel!
    
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")
        let url = URL(fileURLWithPath: path!)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        

    }
    @IBAction func powerBtnTapped(_ sender: Any) {
        BGView.isHidden = false
        player.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 270, width: 375, height: 128)
        }) { (finshed) in
            self.hustleModeLbl.isHidden = false
            self.onLBL.isHidden = false
        }
    }
    

}

