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


    @IBAction func CPressed(_ sender: UIButton) {
      loadSound(ResourceName: "C")
        playSound()
    }
    
    @IBAction func DPressed(_ sender: UIButton) {
        loadSound(ResourceName: "D")
          playSound()
    }
    @IBAction func EPressed(_ sender: UIButton) {
        loadSound(ResourceName: "E")
          playSound()
    }
    @IBAction func FPressed(_ sender: UIButton) {
        loadSound(ResourceName: "F")
          playSound()
    }
    @IBAction func GPressed(_ sender: UIButton) {
        loadSound(ResourceName: "G")
          playSound()
    }
    @IBAction func APressed(_ sender: UIButton) {
        loadSound(ResourceName: "A")
          playSound()
    }
    @IBAction func BPressed(_ sender: UIButton) {
        loadSound(ResourceName: "B")
          playSound()
    }
    func loadSound(ResourceName :String) {
        if let soundURL = Bundle.main.url(forResource: ResourceName, withExtension: "wav",subdirectory: "Sounds") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print("Ses dosyası yüklenemedi.")
            }
        } else {
            print("Ses dosyası bulunamadı.")
        }
    }
    func playSound() {
        if let player = audioPlayer {
            player.play()
        } else {
            print("Ses dosyası yüklenemedi.")
        }
    }
}

