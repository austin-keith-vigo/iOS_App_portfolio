//
//  ExperienceModel.swift
//  Portfolio
//
//  Created by austin vigo on 7/24/21.
//

import Foundation

class Experience {
    var title: String
    var description: String
    var imageURL: String?
    
    init(_ title: String, _ description: String, _ imageURL: String?) {
        self.title = title
        self.description = description
        self.imageURL = imageURL
    }
}
