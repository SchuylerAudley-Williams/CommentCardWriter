//
//  RootTabView.swift
//  CommentCardWriter
//
//  Created by Audley-Williams, Schuyler (SPH) on 23/02/2022.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            WriteView()
                .tabItem{
                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                    Text("Write")
                }
            ExportView()
                .tabItem{
                    Image(systemName: "tray.and.arrow.down.fill")
                    Text("Export")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
