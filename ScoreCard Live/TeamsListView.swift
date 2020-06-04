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
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                
                
                HStack {
                    if post.conference == "East"{
                        Text(String(post.full_name))
                    }
                    
                    
                    
                }
            }
            .listStyle(.grouped)
            .navigationBarTitle("H4X0R NEWS")
            
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
    
    
    
}




struct TeamsListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsListView()
    }
}
