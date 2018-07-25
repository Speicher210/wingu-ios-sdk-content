//
//  ViewController.swift
//  wingu-ios-sdk-content
//
//  Created by JakubMazur on 05/03/2018.
//  Copyright (c) 2018 JakubMazur. All rights reserved.
//

import UIKit
import winguSDKContent
import winguSDKEssential

class ChannelsListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var channels: [Channel] = [Channel]()

    lazy var winguLocations: WinguLocations = {
       let winguLocations = WinguLocations.shared
        winguLocations.delegate = self
        return winguLocations
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winguLocations.start()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let channel = sender as? Channel {
            let destination = segue.destination as? ChannelDetailViewController
            destination?.channel = channel
        }
    }
}

// MARK: - WinguLocationsDelegate
extension ChannelsListViewController: WinguLocationsDelegate {
    func winguChannels(_ channels: [Channel]) {
        self.channels = channels
        self.tableView.reloadData()
    }
}

// MARK: - UITableViewDelegate
extension ChannelsListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detailsSegue", sender: self.channels[indexPath.row])
    }
}

// MARK: - UITableViewDataSource
extension ChannelsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.channels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChannelsListTableViewCell")!
        let channel = channels[indexPath.row]
        cell.textLabel?.text = channel.content?.pack?.deck?.title
        return cell
    }
    
}
