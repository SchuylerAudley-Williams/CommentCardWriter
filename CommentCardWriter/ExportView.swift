//
//  ExportView.swift
//  CommentCardWriter
//
//  Created by Audley-Williams, Schuyler (SPH) on 23/02/2022.
//

import SwiftUI

struct ExportView: View {
    @EnvironmentObject var state: StateController
    @ObservedObject var commentCard = CommentCard()
    
    func copy(toCopy: String) {
        let pasteboard = UIPasteboard.general
        pasteboard.string = toCopy
    }
    
    var body: some View {
        
        VStack {
            Button("Copy to Clipboard", action: copy(toCopy: commentCard.commment))
    }
}

struct ExportView_Previews: PreviewProvider {
    static var previews: some View {
        ExportView()
    }
}
