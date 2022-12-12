//
//  PageModel.swift
//  Pinch
//
//  Created by Valery Keplin on 12.12.22.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
