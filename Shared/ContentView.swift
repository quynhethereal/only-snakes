//
//  ContentView.swift
//  Shared
//
//  Created by Le Helen on 24/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SnakeList().preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
