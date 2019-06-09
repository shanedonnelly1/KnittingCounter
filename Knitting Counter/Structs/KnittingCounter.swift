//
//  KnittingData.swift
//  Knitting Counter
//
//  Created by Shane Donnelly on 09/06/2019.
//  Copyright © 2019 Shane Donnelly. All rights reserved.
//

import Foundation

struct KnittingCount: Codable, Equatable {
    var rowCount: Int
    var patternCount: Int
    
    enum DecodingError: Error {
        case missingFile
    }
    
    enum EncodingError: Error {
        case saving
    }
    
    static func getFileURL() -> URL {
        let documentDirectoryURL = FileManager.documentDirectoryURL
        let fileURL = documentDirectoryURL.appendingPathComponent("data").appendingPathExtension("json")
        return fileURL
    }
    
    func save() throws {
        let jsonEncoder = JSONEncoder()
        do {
            let jsonData = try jsonEncoder.encode(self)
            try jsonData.write(to: KnittingCount.getFileURL())
        } catch {
            
        }
    }
    
    init() throws {
        let fileURL = KnittingCount.getFileURL()
        let decoder = JSONDecoder()
        do {
            let data = try Data(contentsOf: fileURL)
            self = try decoder.decode(KnittingCount.self, from: data)
        } catch {
            throw DecodingError.missingFile
        }
    }
    
    init(rowCount: Int, patternCount: Int) {
        self.rowCount = rowCount
        self.patternCount = patternCount
    }
}
