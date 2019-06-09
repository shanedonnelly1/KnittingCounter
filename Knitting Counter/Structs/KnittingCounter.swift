//
//  KnittingData.swift
//  Knitting Counter
//
//  Created by Shane Donnelly on 09/06/2019.
//  Copyright © 2019 Shane Donnelly. All rights reserved.
//

import Foundation

struct KnittingCount: Codable, Equatable {
    let rowCount: Int
    let patternCount: Int
    
    enum DecodingError: Error {
        case missingFile
    }
    
    func save() {
        
    }
    
    init() throws {
        let documentDirectoryURL = FileManager.documentDirectoryURL
        let documentURL = documentDirectoryURL.appendingPathComponent("data").appendingPathExtension("json")
        
        let decoder = JSONDecoder()
        do {
            let data = try Data(contentsOf: documentURL)
            self = try decoder.decode(KnittingCount.self, from: data)
        } catch {
            throw DecodingError.missingFile
        }
    }
}
