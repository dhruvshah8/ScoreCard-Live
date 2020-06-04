//
//  ConferenceCard.swift
//  ScoreCard Live
//
//  Created by Dhruv Shah on 2020-06-04.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI



struct ConferenceCard: View {
    var conferenceName: String
    
    
    var body: some View {
        
        VStack (alignment: .leading, spacing: 16.0) {
            Text("\(conferenceName) Conference").font(.title).fontWeight(.bold)
            Button(action: {			
                print("Button is pressed")
                
               
                
            }){
                Image(conferenceName).resizable().renderingMode(.original).aspectRatio(contentMode: .fill).frame(width: 350, height: 350).cornerRadius(20).shadow(radius: 20)
            }
        }
    }
}


struct ConferenceCard_Previews: PreviewProvider {
    static var previews: some View {
        ConferenceCard(conferenceName: "Eastern")
    }
}
