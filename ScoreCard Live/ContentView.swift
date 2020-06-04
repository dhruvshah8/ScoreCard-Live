//
//  ContentView.swift
//  ScoreCard Live
//
//  Created by Dhruv Shah on 2020-06-04.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            ConferencesView()
                .tabItem {
                    VStack {
                        Image("first")
                        Text("Teams")
                    }
                }
                .tag(0)
           ConferenceCard(conferenceName: "Eastern")
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Seconddd Testing")
                    }
                }
                .tag(1)
             
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
