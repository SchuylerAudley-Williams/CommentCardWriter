//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Audley-Williams, Schuyler (SPH) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    var commentCard = CommentCard()
    
    var body: some View {
        VStack {
            Toggle(isOn: Binding(commentCard.isHappy))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(commentCard: CommentCard())
    }
}
