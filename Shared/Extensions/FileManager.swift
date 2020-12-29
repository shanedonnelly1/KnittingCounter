//
//  FileManager.swift
//  Knitting Counter
//
//  Created by Shane Donnelly on 09/06/2019.
//  Copyright © 2019 Shane Donnelly. All rights reserved.
//

import Foundation

public extension FileManager {
    static var documentDirectoryURL: URL {
        return `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
}
