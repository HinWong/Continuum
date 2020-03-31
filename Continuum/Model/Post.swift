//
//  Post.swift
//  Continuum
//
//  Created by Hin Wong on 3/31/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import Foundation

class Post {
    
    var photoData: Data?
    var timestamp: Date
    var caption: String
    var comments: [Comment]
    
    var photo: UIImage? {
        get {
            guard let photoData = photoData else {return nil}
            return UIImage(data: photoData)
        }
        set {
            photoData = newValue?.jpegData(compressionQuality: 0.5)
        }
    }
    
    init(photo: UIImage?, photoData: Data, timestamp: Date = Date(), caption: String, comments: [Comment] = []) {
        self.photoData = photoData
        self.timestamp = timestamp
        self.caption = caption
        self.comments = comments
        self.photo = photo
    }
    
}
