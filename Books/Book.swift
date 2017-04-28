//
//  Book.swift
//  Books
//
//  Created by SDS-007 on 2017. 4. 28..
//  Copyright © 2017년 NHIT. All rights reserved.
//

import Foundation
import UIKit

class Book {
    let title: String
    let author: String?
    let coverImage: UIImage?
    let URL: String?
    
    init(title: String, author: String?, coverImage: UIImage?, URL: String?) {
        self.title = title
        self.author = author
        self.coverImage = coverImage
        self.URL = URL
    }
}
