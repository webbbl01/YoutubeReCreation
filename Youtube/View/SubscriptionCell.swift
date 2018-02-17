//
//  SubscriptionCell.swift
//  Youtube
//
//  Created by Blaine on 2/16/18.
//  Copyright © 2018 Blaine. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {
    override func fetchVideos() {
        ApiService.sharedInstance.fetchSubscriptionFeed { (videos: [Video]) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
}
