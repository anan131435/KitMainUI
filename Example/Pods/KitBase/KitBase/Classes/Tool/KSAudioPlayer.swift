//
//  KSAudioPlayer.swift
//  Kit
//
//  Created by 韩志峰 on 2020/8/4.
//  Copyright © 2020 韩志峰. All rights reserved.
//

import UIKit
import AVFoundation
public class KSAudioPlayer: NSObject {
    public static let shareInstance =  KSAudioPlayer()
    public func getPlayer() -> AVAudioPlayer?{
        
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setActive(true, options: AVAudioSession.SetActiveOptions.notifyOthersOnDeactivation)
        } catch _ {
              
        }
        do {
            try  audioSession.setCategory(.playback, mode: .default, options: .mixWithOthers)
        }catch let error as NSError {print(error.description)}
        
        do {
            let musicUrl: URL = Bundle.main.url(forResource: "SomethingJustLikeThis", withExtension: "mp3")!
            let player: AVAudioPlayer = try AVAudioPlayer.init(contentsOf: musicUrl)
            player.numberOfLoops = -1
            #if DEBUG
            player.volume = 0.1
            #else
            player.volume = 0.0
            #endif
            player.prepareToPlay()
            return player
        } catch _ {
            print("初始化失败")
        }
        return nil
    }
}
