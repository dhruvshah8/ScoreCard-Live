//
//  PostData.swift
//  ScoreCard Live
//
//  Created by Dhruv Shah on 2020-06-04.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let data: [Post]
}

struct Post: Decodable, Identifiable {
 
    let id: Int
    let full_name: String
    let conference: String
}
