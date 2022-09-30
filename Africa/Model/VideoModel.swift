//
//  VideoModel.swift
//  Africa
//
//  Created by Yile Hu on 9/29/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
