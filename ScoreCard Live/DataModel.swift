//
//  DataModel.swift
//  ScoreCard Live
//
//  Created by Dhruv Shah on 2020-06-04.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import Foundation

class DataModel: ObservableObject {
    
    @Published var teams = [Teams]()
    
    func fetchData() {
        if let url = URL(string: "https://www.balldontlie.io/api/v1/teams") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(TeamsModel.self, from: safeData)
                            self.teams = results.data
//                                for index in 0...self.teams.count-1 {
//                                    print(self.teams[index].full_name)
//                                    print(self.teams[index].id)
//                                }
                            
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
}
