//
//  PageModel.swift
//  Pinch
//
//  Created by Y K on 08.01.2024.
//

import Foundation

struct PageModel: Identifiable {
    let id: Int
    let imageName: String
}

extension PageModel {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
