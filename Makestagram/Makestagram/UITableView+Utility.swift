//
//  UITableView+Utility.swift
//  Makestagram
//
//  Created by Aditi Gnanasekar on 6/29/17.
//  Copyright © 2017 Aditi Gnanasekar. All rights reserved.
//

import Foundation
import UIKit

protocol CellIdentifiable {
    static var cellIdentifier: String { get }
}

extension CellIdentifiable where Self: UITableViewCell {
    static var cellIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: CellIdentifiable { }

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T where T: CellIdentifiable {
        // 2
        guard let cell = dequeueReusableCell(withIdentifier: T.cellIdentifier) as? T else {
            // 3
            fatalError("Error dequeuing cell for identifier \(T.cellIdentifier)")
        }
        
        return cell
    }
}
