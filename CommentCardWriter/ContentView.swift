//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Audley-Williams, Schuyler (SPH) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var commentCard = CommentCard()
    
    var body: some View {
        VStack {
            Section {
                Toggle("Are you happy?", isOn: $commentCard.isHappy)
                Toggle("Is your attainment high?", isOn: $commentCard.hasHighAttainment)
                Toggle("Do you need to improve?", isOn: $commentCard.needsImprovement)
            }
            Text(commentCard.comment)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
