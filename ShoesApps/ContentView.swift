//
//  ContentView.swift
//  ShoesApps
//
//  Created by Ahmad Maulana on 30/08/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                //MARK: - Top Bar
                HStack {
                    Button(action: {}) {
                        Image(systemName: "text.alignleft")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .padding(16)
                            .background(Color.neuBackground)
                            .cornerRadius(20)
                            .font(.headline)
                            .foregroundColor(Color(hex: "#FE0F1B"))
                    }
                    .shadow(color: Color.dropLight, radius: 10, x: -5, y: -5)
                    .shadow(color: Color.dropShadow, radius: 5, x: 5, y: 5)
                    
                    Spacer(minLength: 0)
                    
                    Image("nike")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .padding(16)
                            .background(Color.neuBackground)
                            .cornerRadius(20)
                            .font(.headline)
                            .foregroundColor(Color(hex: "#FE0F1B"))
                    }
                    .shadow(color: Color.dropLight, radius: 10, x: -5, y: -5)
                    .shadow(color: Color.dropShadow, radius: 5, x: 5, y: 5)
                    
                }.padding()
                
                //MARK: - Content
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Button(action: {}) {
                            Text("Lifestyle").fontWeight(.heavy).foregroundColor(.black)
                        }
                        
                        Spacer(minLength: 20)
                        
                        Button(action: {}) {
                            Text("Jordan").foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 20)
                        
                        Button(action: {}) {
                            Text("Running").foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 20)
                        
                        Button(action: {}) {
                            Text("BasketBall").foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 20)
                        
                        Button(action: {}) {
                            Text("Football").foregroundColor(.gray)
                        }
                        
                        
                    }
                }.padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ShoesListCard()
                        ShoesListCard()
                        ShoesListCard()
                        ShoesListCard()
                        ShoesListCard()
                    }.padding()
                }
                
                VStack {
                    HStack {
                        Text("Popular")
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Text("See All")
                            .foregroundColor(Color.init(hex: "#ddd"))
                            .font(.headline)
                    }.padding()
                    
                    ScrollView(.vertical) {
                        VStack {
                            ShoesListCardHorizontal()
                            ShoesListCardHorizontal()
                            ShoesListCardHorizontal()
                        }.padding()
                    }
                }
            }
        }.statusBar(hidden: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
