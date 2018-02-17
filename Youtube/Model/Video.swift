//
//  Video.swift
//  Youtube
//
//  Created by Blaine on 2/15/18.
//  Copyright © 2018 Blaine. All rights reserved.
//

import UIKit

class Video: NSObject {
    @objc var thumbnail_image_name: String?
    @objc var title: String?
    @objc var number_of_views: NSNumber?
    @objc var uploadDate: NSDate?
    @objc var duration: NSNumber?
    
    var channel: Channel?
    
    override func setValue(_ value: Any?, forKey key: String) {
        if key == "channel" {
            self.channel = Channel()
            channel?.setValuesForKeys(value as! [String: AnyObject])
        } else {
            super.setValue(value, forKey: key)
        }
    }
    init(dictionary: [String: AnyObject]) {
        super.init()
        setValuesForKeys(dictionary)
    }
    
}

class Channel: NSObject {
    @objc var name: String?
    @objc var profile_image_name: String?
}
