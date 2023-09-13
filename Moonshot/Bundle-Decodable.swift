//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Phil Prater on 9/13/23.
//

import Foundation

// We want to make decoding our JOSN data simpler,
// extend Bundle and ask it to decode a specific file.
// By using generics, we can
extension Bundle {
    // NOTE: we can require the generic type to conform to Codable protocol so decoder.decode() works properly.
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locaate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
}
