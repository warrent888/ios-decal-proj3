//
//  PhotosCollectionsDetailsViewController.swift
//  Photos
//
//  Created by Warren W Tian on 11/16/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import UIKit

class PhotosCollectionsDetailsViewController: UIViewController {
    
    var photo: Photo!
    @IBOutlet var photoView: UIImageView!
    @IBOutlet var username: UILabel!
    @IBOutlet var likes: UILabel!
    @IBOutlet var date: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImage(self.photo, imageView: self.photoView)
        self.username.text = "Username: " + self.photo.username
        self.date.text = "Date: \(self.photo.dateText)"
        self.likes.text = "Likes: \(self.photo.likes)"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadImage(photo: Photo, imageView: UIImageView) {
        let task = NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: photo.url)!) {
            (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            if error == nil {
                imageView.image = UIImage(data: data!)
            }
        }
        task.resume()
    }
    
    @IBAction func likePicture(sender: AnyObject) {
        if self.likeButton.titleLabel!.text == "Like" {
            self.likeButton.setTitle("Liked ❤️", forState: UIControlState.Normal)
            self.photo.isLiked = true
        } else {
            self.likeButton.setTitle("Like", forState: UIControlState.Normal)
            self.photo.isLiked = false
        }
    }
    
}
