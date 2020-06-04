//
//  TeamsModel.swift
//  ScoreCard Live
//
//  Created by Dhruv Shah on 2020-06-04.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import Foundation
 
struct TeamsModel: Decodable {
    
    let data: [Teams]
}

struct Teams: Decodable, Identifiable {
    let id: Int
    let conference: String
    let full_name: String
}
