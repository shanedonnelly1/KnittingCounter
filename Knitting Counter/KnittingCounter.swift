//
//  KnittingData.swift
//  Knitting Counter
//
//  Created by Shane Donnelly on 09/06/2019.
//  Copyright © 2019 Shane Donnelly. All rights reserved.
//

import Foundation

struct KnittingCount: Decodable {
    let rowCount: Int
    let patternCount: Int
    
    enum DecodingError: Error {
        case missingFile
    }
    
    init(fileName: String) throws {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            throw DecodingError.missingFile
        }
        
        let decoder = JSONDecoder()
        let data = try Data(contentsOf: url)
        self = try decoder.decode(KnittingCount.self, from: data)
    }
    
}
