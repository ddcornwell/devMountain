//
//  ViewController.swift
//  Audio
//
//  Created by DANIEL CORNWELL on 10/25/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sample", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            
            
            let audioSession = AVAudioSession.sharedInstance()
            
            
            do{
                try audioSession.setCategory(AVAudioSessionCategoryPlayback)
            
            }
            catch {
            
            
            }
        }
        catch{
        
        print(error)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play(_ sender: AnyObject) {
        
        audioPlayer.play()
        
        
    }

    @IBAction func pause(_ sender: AnyObject) {
        
        if audioPlayer.isPlaying{
            audioPlayer.pause()
        }else{
        
        }
        
    }
    
    
    @IBAction func restart(_ sender: AnyObject) {
    
    if audioPlayer.isPlaying {
    
    audioPlayer.currentTime = 0
    audioPlayer.play()
    
    }else{
    
        audioPlayer.play()
    }
    
}



}

