//
//  ViewController.swift
//  ProyectoParcial1
//
//  Created by Alumno on 9/10/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var playerFondo = AVAudioPlayer()
    var playerAnimal = AVAudioPlayer()
    
    let urlFondo = Bundle.main.url(forResource: "fondo", withExtension: "wav")
    let urlDog = Bundle.main.url(forResource: "dog", withExtension: "wav")
    let urlCat = Bundle.main.url(forResource: "cat", withExtension: "wav")
    let urlRooster = Bundle.main.url(forResource: "rooster", withExtension: "wav")
    
    
    let secDog = [
        UIImage(named: "dog_00000")!,
        UIImage(named: "dog_00001")!,
        UIImage(named: "dog_00002")!,
        UIImage(named: "dog_00003")!,
        UIImage(named: "dog_00004")!,
        UIImage(named: "dog_00005")!,
        UIImage(named: "dog_00006")!,
        UIImage(named: "dog_00007")!
    ]
    let secDogPrev = [
        UIImage(named: "dog1_00000")!,
        UIImage(named: "dog1_00001")!,
        UIImage(named: "dog1_00002")!,
        UIImage(named: "dog1_00003")!,
        UIImage(named: "dog1_00004")!,
        UIImage(named: "dog1_00005")!,
        UIImage(named: "dog1_00006")!,
        UIImage(named: "dog1_00007")!,
        UIImage(named: "dog1_00008")!,
        UIImage(named: "dog1_00009")!,
        UIImage(named: "dog1_00010")!,
        UIImage(named: "dog1_00011")!
    ]
    
    let secCat = [
        UIImage(named: "cat_00000")!,
        UIImage(named: "cat_00001")!,
        UIImage(named: "cat_00002")!,
        UIImage(named: "cat_00003")!,
        UIImage(named: "cat_00004")!,
        UIImage(named: "cat_00005")!,
        UIImage(named: "cat_00006")!,
        UIImage(named: "cat_00007")!,
        UIImage(named: "cat_00008")!,
        UIImage(named: "cat_00009")!,
        UIImage(named: "cat_00010")!,
        UIImage(named: "cat_00011")!
    ]
    let secCatPrev = [
        UIImage(named: "cat1_00000")!,
        UIImage(named: "cat1_00001")!,
        UIImage(named: "cat1_00002")!,
        UIImage(named: "cat1_00003")!,
        UIImage(named: "cat1_00004")!,
        UIImage(named: "cat1_00005")!
    ]

    let secRooster = [
        UIImage(named: "rooster_00000")!,
        UIImage(named: "rooster_00001")!,
        UIImage(named: "rooster_00002")!,
        UIImage(named: "rooster_00003")!,
        UIImage(named: "rooster_00004")!,
        UIImage(named: "rooster_00005")!,
        UIImage(named: "rooster_00006")!,
        UIImage(named: "rooster_00007")!,
        UIImage(named: "rooster_00008")!,
        UIImage(named: "rooster_00009")!
    ]
    let secRoosterPrev = [
        UIImage(named: "rooster1_00000")!,
        UIImage(named: "rooster1_00001")!,
        UIImage(named: "rooster1_00002")!,
        UIImage(named: "rooster1_00003")!,
        UIImage(named: "rooster1_00004")!,
        UIImage(named: "rooster1_00005")!,
        UIImage(named: "rooster1_00006")!,
        UIImage(named: "rooster1_00007")!,
        UIImage(named: "rooster1_00008")!,
        UIImage(named: "rooster1_00009")!
    ]
    
    @IBOutlet weak var lblAnimal: UILabel!
    @IBOutlet weak var imgAnimPrev: UIImageView!
    @IBOutlet weak var imgAnimDogBtn: UIImageView!
    @IBOutlet weak var imgAnimCatBtn: UIImageView!
    @IBOutlet weak var imgAnimRoosterBtn: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            playerFondo = try AVAudioPlayer(contentsOf: urlFondo!, fileTypeHint: AVFileType.wav.rawValue)
            playerFondo.numberOfLoops = -1
            playerFondo.volume = 0.2
            playerFondo.play()
        } catch let error {
            print(error.localizedDescription)
        }
        // Do any additional setup after loading the view.
        imgAnimDogBtn.animationImages = secDog
        imgAnimDogBtn.animationDuration = 0.3
        imgAnimDogBtn.startAnimating()
        
        imgAnimCatBtn.animationImages = secCat
        imgAnimCatBtn.animationDuration = 0.5
        imgAnimCatBtn.startAnimating()
        
        imgAnimRoosterBtn.animationImages = secRooster
        imgAnimRoosterBtn.animationDuration = 0.416
        imgAnimRoosterBtn.startAnimating()
    }

    @IBAction func doTapDog(_ sender: Any) {
        lblAnimal.text = "Dog"
        imgAnimPrev.animationImages = secDogPrev
        imgAnimPrev.animationDuration = 0.5
        imgAnimPrev.startAnimating()
        
        do{
            playerAnimal = try AVAudioPlayer(contentsOf: urlDog!, fileTypeHint: AVFileType.wav.rawValue)
            playerAnimal.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    @IBAction func doTapCat(_ sender: Any) {
        lblAnimal.text = "Cat"
        imgAnimPrev.animationImages = secCatPrev
        imgAnimPrev.animationDuration = 0.25
        imgAnimPrev.startAnimating()
        
        do{
            playerAnimal = try AVAudioPlayer(contentsOf: urlCat!, fileTypeHint: AVFileType.wav.rawValue)
            playerAnimal.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    @IBAction func doTapRooster(_ sender: Any) {
        lblAnimal.text = "Rooster"
        imgAnimPrev.animationImages = secRoosterPrev
        imgAnimPrev.animationDuration = 0.416
        imgAnimPrev.startAnimating()
        
        do{
            playerAnimal = try AVAudioPlayer(contentsOf: urlRooster!, fileTypeHint: AVFileType.wav.rawValue)
            playerAnimal.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}

