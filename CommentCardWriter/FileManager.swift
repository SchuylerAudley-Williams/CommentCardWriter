//
//  FileManager.swift
//  CommentCardWriter
//
//  Created by Audley-Williams, Schuyler (SPH) on 28/02/2022.
//

import Foundation

extension FileManager {
    private func getDocumentDiretcory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
