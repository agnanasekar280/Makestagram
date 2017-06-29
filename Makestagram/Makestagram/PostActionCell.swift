//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Aditi Gnanasekar on 6/27/17.
//  Copyright © 2017 Aditi Gnanasekar. All rights reserved.
//

import Foundation
import UIKit

protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}

class PostActionCell: UITableViewCell {
    
    weak var delegate: PostActionCellDelegate?
  
    static let height: CGFloat = 46
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        delegate?.didTapLikeButton(sender, on: self)
    }
}
