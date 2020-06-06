//
//  TeamsListView.swift
//  ScoreCard Live
//
//  Created by Dhruv Shah on 2020-06-04.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct EasternTeams: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var conference: String
    let easternTeams = EasternTeamsList()
    
    
    
    
    
    
    
    
    var body: some View {
        
        
        VStack {
            HStack {
                Text("Eastern Conference").font(.title).fontWeight(.bold).padding()
                Spacer()
            }
            List{
                ForEach(0..<4) { col in
                    HStack{
                        Spacer()
                        ForEach(0..<2) { row in
                                TeamView(teamAbreviation: self.easternTeams.teams[col][row])
                        }
                        Spacer()
                    }
                }
            }
        }
        
    }
    
    
}






struct EasternTeamsList {
    let teams  = [["BOS","BKN"],["NYK","PHI"],["CHI","ATL"],["MIA","WSH"]
        
    ]
}


 


struct EasternTeams_Previews: PreviewProvider {
    static var previews: some View {
        EasternTeams( conference: "Eastern")
    }
}
