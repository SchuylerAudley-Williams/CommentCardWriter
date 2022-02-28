//
//  StateController.swift
//  CommentCardWriter
//
//  Created by Audley-Williams, Schuyler (SPH) on 28/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var comments: [String] = []
    
    init(){
        loadFromFile()
    }
    
    func loadFromFile() {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent("comments.json")
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([String].self, from: data) {
                comments = loaded
            }
        }
    }
    
    func saveToFile() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(comments) {
            if let json = String(data: encoded, encoding: .utf8) {
                let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
                let userPath = paths[0]
                let url = userPath.appendingPathComponent("comments.json")
                do {
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}
