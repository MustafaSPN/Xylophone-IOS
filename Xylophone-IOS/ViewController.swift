//
//  ViewController.swift
//  Xylophone-IOS
//
//  Created by Mustafa Sepen on 23.06.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
          
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(ResourceName: sender.currentTitle!)
        UIView.animate(withDuration: 0.2, animations: {
               sender.alpha = 0.5 // Butonun opaklığını azaltın
           }) { _ in
               UIView.animate(withDuration: 0.3) {
                   sender.alpha = 1.0 // Butonun opaklığını geri getirin
               }
           }
    }
    
    func playSound(ResourceName :String) {
         let soundURL = Bundle.main.url(forResource: ResourceName, withExtension: "wav",subdirectory: "Sounds")
             audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioPlayer?.play()
    }
 
}

