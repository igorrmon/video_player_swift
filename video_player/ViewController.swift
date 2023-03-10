//
//  ViewController.swift
//  video_player
//
//  Created by Igor Ramon Fernandes Diniz on 23/02/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    
    
    private func playVideo(){
        let pathVideo = "adMac"
        guard let path = Bundle.main.path(forResource: pathVideo, ofType: "mp4") else{
            debugPrint("\(pathVideo) not found")
            
            return;
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        
        let playerController = AVPlayerViewController()
        
        playerController.player = player
        
        present(playerController, animated: true){
            player.play()
        }
    }


}

