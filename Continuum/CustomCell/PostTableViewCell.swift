//
//  PostTableViewCell.swift
//  Continuum
//
//  Created by Hin Wong on 3/31/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postCaptionLabel: UILabel!
    @IBOutlet weak var postCommentLabel: UILabel!
    
    var post: Post? {
        didSet {
            updateViews()
        }
    }

    func updateViews() {
        
        guard let post = post else {return}
        
        postImage.image = post.photo
        postCaptionLabel.text = post.caption
        postCommentLabel.text = "\(post.comments.count)"
    }
}
