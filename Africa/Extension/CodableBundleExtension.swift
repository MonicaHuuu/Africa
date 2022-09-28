//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Yile Hu on 9/28/22.
//

import Foundation

extension Bundle {
    // Need the underscore so that
    // we don't need to enter the name of
    // parameter each time when we call func
    func decode(_ file: String) -> [CoverImage] {
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: URL) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // 5. Return the ready-to-use data
        return loaded
    }
}
