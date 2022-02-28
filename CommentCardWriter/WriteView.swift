//
//  WriteView.swift
//  CommentCardWriter
//
//  Created by Audley-Williams, Schuyler (SPH) on 08/02/2022.
//

import SwiftUI

struct WriteView: View {
    @StateObject private var commentCard = CommentCard()
    @State private var specificComments: String  = ""
    @State private var subject: String = ""
    @State private var comment: String = ""
    
    var body: some View {
        
        VStack{
            Section {
                Toggle("Are you happy?", isOn: $commentCard.isHappy)
                Toggle("Is your attainment high?", isOn: $commentCard.hasHighAttainment)
                Toggle("Do you need to improve?", isOn: $commentCard.needsImprovement)
                TextField("Specific Comments", text: $specificComments).textFieldStyle(.roundedBorder)
                TextField("Subject", text: $subject).textFieldStyle(.roundedBorder)
            }
            VStack{
                Button("Write", action: {
                    commentCard.commment = "In \(subject), \(commentCard.writeComment()) \(specificComments)"
                })
                Text(commentCard.commment)
            }
        }
            Spacer()
        }
    }


struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
