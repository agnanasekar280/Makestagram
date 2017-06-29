//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Aditi Gnanasekar on 6/27/17.
//  Copyright © 2017 Aditi Gnanasekar. All rights reserved.
//

import Foundation
import UIKit

class PostHeaderCell: UITableViewCell {
    
    static let height: CGFloat = 54
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func optionsButtonTapped(_ sender: Any) {
        print("options button tapped")
    }
    
}
