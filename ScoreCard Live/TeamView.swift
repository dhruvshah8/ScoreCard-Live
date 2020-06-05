//
//  TeamView.swift
//  ScoreCard Live
//
//  Created by Dhruv Shah on 2020-06-04.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct TeamView: View {
    let teamName: Post
    var body: some View {
        
        Text("\(teamName)")
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView(teamName: Post)
    }
}
