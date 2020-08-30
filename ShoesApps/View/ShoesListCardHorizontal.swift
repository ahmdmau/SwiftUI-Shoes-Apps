//
//  ShoesListCardHorizontal.swift
//  ShoesApps
//
//  Created by Ahmad Maulana on 30/08/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import SwiftUI

struct ShoesListCardHorizontal: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("shoes")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 80)
                .rotationEffect(.degrees(-30))
            
            VStack(alignment: .leading) {
                Text("Nike Air Zoom Pegasus")
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .font(.headline)
                    .lineLimit(nil)
                Spacer()
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
        .frame(height: 90)
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.dropLight, radius: 10, x: -5, y: -5)
        .shadow(color: Color.dropShadow, radius: 5, x: 5, y: 5)
    }
}

struct ShoesListCardHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        ShoesListCardHorizontal()
    }
}
