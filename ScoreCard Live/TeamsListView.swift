//
//  TeamsListView.swift
//  ScoreCard Live
//
//  Created by Dhruv Shah on 2020-06-04.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct TeamsListView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var conference = "East"
    
    var body: some View {
       
    
            ScrollView {
                  HStack(alignment: .top){
                    ForEach (networkManager.posts, id:\.conference)
                    {team in
                        TeamView(teamName: team)
                    }
                }
          
        }
        
    }
}




struct TeamsListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsListView()
    }
}
