//
//  PostDetailTableViewController.swift
//  Continuum
//
//  Created by Hin Wong on 4/1/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class PostDetailTableViewController: UITableViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var photoImageView: UIImageView!
    
    // MARK: - Properties
    
    var post: Post? {
        didSet {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func commentButtonTapped(_ sender: Any) {
    }
    
    @IBAction func shareButtonTapped(_ sender: Any) {
    }
    
    @IBAction func followButtonTapped(_ sender: Any) {
    }
    
    func updateViews() {
        guard let post = post else { return }
        
        photoImageView.image = post.photo
        tableView.reloadData()
        
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCommentCell", for: indexPath)

        // Configure the cell...

        return cell
    }
    

}
