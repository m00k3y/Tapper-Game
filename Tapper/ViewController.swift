//
//  ViewController.swift
//  Tapper
//
//  Created by Michael Ritner on 11/8/15.
//  Copyright © 2015 Michael Ritner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//Properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
//Outlets

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapstxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var TapBtn: UIButton!
    @IBOutlet weak var TabLbl: UILabel!

    
//when tap count submitted handle number of taps needed to win

    @IBAction func onCoinBtnPressed(sender: UIButton) {
        
        currentTaps++
        updateTabLbl()
        
        if isGameOver() {
            restartGame()
        }
    }
    
//when play button is pressed hide current objects and unhide game objects
    
    @IBAction func onPlayBtnPressed(sender: UIButton) {

        
        if howManyTapstxt.text != nil  && howManyTapstxt.text != "" {
            
            logoImg.hidden = true
            howManyTapstxt.hidden = true
            playBtn.hidden = true
            
            TapBtn.hidden = false
            TabLbl.hidden = false
            
            maxTaps = Int(howManyTapstxt.text!)!
            currentTaps = 0
            updateTabLbl()
            
            
        }
    }
    
    
// function to restart game
    func restartGame(){
        maxTaps = 0
        
        howManyTapstxt.text = ""
        
        logoImg.hidden = false
        howManyTapstxt.hidden = false
        playBtn.hidden = false
        
        TapBtn.hidden = true
        TabLbl.hidden = true
        
    }
    
// function to handle updating Tablbl
    
        func updateTabLbl() {
        TabLbl.text = "\(currentTaps) Taps"
    }
    


// function to tell if game is over

        func isGameOver() -> Bool {
            if currentTaps >= maxTaps {
                return true
            } else {
                return false
            }
        }
    
    
    
}