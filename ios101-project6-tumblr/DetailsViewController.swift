//
//  DetailsViewController.swift
//  ios101-project6-tumblr
//
//  Created by Mariia Mohylska on 3/31/24.
//

import UIKit
import Nuke

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var captionTextView: UITextView!
    @IBOutlet weak var posterView: UIImageView!
    
    var post: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        captionTextView.text = post?.caption.trimHTMLTags()
        if let photo = post?.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: posterView)
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
