//
//  TeamsListView.swift
//  ScoreCard Live
//
//  Created by Dhruv Shah on 2020-06-04.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct WesternTeams: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var conference: String
    let westernTeams = WesternTeamsList()
    
    
    
    var body: some View {
        
        VStack {
        HStack {
            Text("Western Conference").font(.title).fontWeight(.bold).padding()
            Spacer()
        }
        
        List {
            ForEach(0..<4) { col in
                HStack{
                    Spacer()
                    ForEach(0..<2) { row in
                        
                        TeamView(teamAbreviation: self.westernTeams.teams[col][row])
                        
                    }
                    Spacer()
                }
            }
        }
        }
        
    }
    
    
}



struct WesternTeamsList {
    let teams  = [["TOR","BKN"],["NYK","PHI"],["CHI","ATL"],["MIA","WSH"]
        
    ]
}


struct WesternTeams_Previews: PreviewProvider {
    static var previews: some View {
        EasternTeams( conference: "Eastern")
    }
}
