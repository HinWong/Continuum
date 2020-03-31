//
//  PostController.swift
//  Continuum
//
//  Created by Hin Wong on 3/31/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class PostController {
    
    //shared instance
    static let shared = PostController()
    
    var posts: [Post] = []
    
    //CRUD Functions
    func createPostWith (photo: UIImage?, caption: String, completion: @escaping (Result<Post?, PostError>) -> Void) {
        
        let post = Post(photo: photo, caption: caption)
        posts.append(post)
    }
    
    func addComment (text: String, post: Post, completion: @escaping(Result<Comment, PostError>) -> Void) {
        
        let comment = Comment(text: text, post: post)
        post.comments.append(comment)
    }
}
