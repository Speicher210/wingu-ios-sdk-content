//
//  ChannelDetailViewController.swift
//  wingu-ios-sdk-content_Example
//
//  Created by Jakub Mazur on 25/07/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import winguSDKEssential
import winguSDKContent

class ChannelDetailViewController: UIViewController {

    @IBOutlet weak var deckView: DeckView!
    var channel: Channel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.deckView.drawDeck(channel)
    }

}
