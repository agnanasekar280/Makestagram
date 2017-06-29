//
//  StorageReference+Post.swift
//  Makestagram
//
//  Created by Aditi Gnanasekar on 6/26/17.
//  Copyright © 2017 Aditi Gnanasekar. All rights reserved.
//

import Foundation
import Foundation
import FirebaseStorage

extension StorageReference {
    static let dateFormatter = ISO8601DateFormatter()
    
    static func newPostImageReference() -> StorageReference {
        let uid = User.current.uid
        let timestamp = dateFormatter.string(from: Date())
        
        return Storage.storage().reference().child("images/posts/\(uid)/\(timestamp).jpg")
    }
}
