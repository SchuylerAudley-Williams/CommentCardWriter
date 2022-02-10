//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Audley-Williams, Schuyler (SPH) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var commentCard = CommentCard()
    @State private var specificComments: String  = ""
    @State private var subject: String = ""
    //@State private var comment: String = "In \(subject), \(commentCard.comment) \(specificComments)"
    
    var body: some View {
        
        VStack {
            Section {
                Toggle("Are you happy?", isOn: $commentCard.isHappy)
                Toggle("Is your attainment high?", isOn: $commentCard.hasHighAttainment)
                Toggle("Do you need to improve?", isOn: $commentCard.needsImprovement)
                TextField("Specific Comments", text: $specificComments).textFieldStyle(.roundedBorder)
                TextField("Subject", text: $subject).textFieldStyle(.roundedBorder)
            }
            Text("In \(subject), \(commentCard.comment) \(specificComments)").foregroundColor(Color.red)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
