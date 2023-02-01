//
//  ContentView.swift
//  SmileApp
//
//  Created by kenichi kitahara on 2022/09/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "face.smiling.fill")
            .resizable()
            .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
