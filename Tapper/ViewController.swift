//
//  ViewController.swift
//  Tapper
//
//  Created by Michael Ritner on 11/8/15.
//  Copyright © 2015 Michael Ritner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapstxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var TapBtn: UIButton!
    @IBOutlet weak var TabLbl: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: UIButton) {
        logoImg.hidden = true
        howManyTapstxt.hidden = true
        playBtn.hidden = true
        TapBtn.hidden = false
        TabLbl.hidden = false
    }
    
}

