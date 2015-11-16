//
//  Photo.swift
//  Photos
//
//  Created by Gene Yoo on 11/3/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import Foundation

class Photo {
    /* The number of likes the photo has. */
    var likes : Int!
    /* The string of the url to the photo file. */
    var url : String!
    /* The username of the photographer. */
    var username : String!
    var date : NSDate!
    var dateText: String!
    var isLiked : Bool!

    /* Parses a NSDictionary and creates a photo object. */
    init (data: NSDictionary) {
        self.likes = data.valueForKey("likes")?.valueForKey("count") as! Int
        self.username = data.valueForKey("user")?.valueForKey("username") as! String
        let time = data.valueForKey("created_time") as! String
        self.date = NSDate(timeIntervalSince1970: Double(time)!)
        self.url = data.valueForKey("images")?.valueForKey("thumbnail")?.valueForKey("url") as! String
        let format = NSDateFormatter()
        format.dateStyle = .MediumStyle
        self.dateText = format.stringFromDate(self.date)
        self.isLiked = false
    }

}