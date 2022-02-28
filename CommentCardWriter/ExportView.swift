//
//  ExportView.swift
//  CommentCardWriter
//
//  Created by Audley-Williams, Schuyler (SPH) on 23/02/2022.
//

import SwiftUI

struct ExportView: View {
    @EnvironmentObject var state: StateController
    
    var body: some View {
        let comments = state.comments
        
        VStack {
            Text(comments)
        }
    }
}

struct ExportView_Previews: PreviewProvider {
    static var previews: some View {
        ExportView()
    }
}
