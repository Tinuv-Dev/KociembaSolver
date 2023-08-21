//
//  File.swift
//  
//
//  Created by Todd Bates on 8/20/23.
//

import Foundation
import KociembaSolverCpp

public func applyKociembaSolver(facelets: String,
                                maxdepth: Int32 = 25000,
                                timeout: Int = 500,
                                useSeperator: Int32 = 0,
                                cache_dir: String = FileManager.default.temporaryDirectory.path) -> String? {

    guard let solution = ApplyKociembaAlgorithm(strdup(facelets), maxdepth, timeout, useSeperator, cache_dir) else {
        return nil
    }
    
    return String(cString: solution)
}

