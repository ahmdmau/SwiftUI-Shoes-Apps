//
//  ShoesListCard.swift
//  ShoesApps
//
//  Created by Ahmad Maulana on 30/08/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import SwiftUI

struct ShoesListCard: View {
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                Text("01")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(hex: "#ddd"))
                    .font(.title)
                    .position(CGPoint(x: 30, y: 30))
                
                VStack(alignment: .leading) {
                    Image("shoes")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                    
                    Text("Nike Air Zoom Pegasus")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .font(.headline)
                        .lineLimit(nil)
                    
                    HStack {
                        Text("$131")
                            .italic()
                            .foregroundColor(Color(hex: "#FE0F1B"))
                            .bold()
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "play.fill")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .padding(10)
                                .background(Color(hex: "#FE0F1B"))
                                .cornerRadius(20)
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .shadow(color: Color.dropLight, radius: 10, x: -5, y: -5)
                        .shadow(color: Color.dropShadow, radius: 5, x: 5, y: 5)
                    }
                }
            }
            .padding()
            .frame(width: 200, height: 280)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.dropLight, radius: 10, x: -5, y: -5)
            .shadow(color: Color.dropShadow, radius: 5, x: 5, y: 5)
        }
    }
}

struct ShoesListCard_Previews: PreviewProvider {
    static var previews: some View {
        ShoesListCard()
    }
}
