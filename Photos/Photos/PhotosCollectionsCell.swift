//
//  PhotosCollectionsCell.swift
//  Photos
//
//  Created by Warren W Tian on 11/16/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import UIKit

class PhotosCollectionsCell: UICollectionViewCell {
    let photo = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.photo.frame = bounds
        addSubview(self.photo)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
