//
//  ConferencesView.swift
//  ScoreCard Live
//
//  Created by Dhruv Shah on 2020-06-04.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//
// "https://www.balldontlie.io/api/v1/teams"
import SwiftUI

struct ConferencesView: View {
    var body: some View {
        
        NavigationView{
            
            List{
                ConferenceCard(conferenceName: "Eastern")
                ConferenceCard(conferenceName: "Western")
            }
            .navigationBarTitle(Text("Teams"))
        }
    }
}

struct ConferencesView_Previews: PreviewProvider {
    static var previews: some View {
        ConferencesView()
    }
}
