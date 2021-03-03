//
//  ContentView.swift
//  war-challenge
//
//  Created by Christoffer Widstrom on 2/20/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card6"
    @State var cpuCard = "card5"
    @State var playerScore = 0
    @State var cpuScore = 0
        
    var body: some View {
        
        ZStack {
            

            Image("background")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack(spacing: 0.0){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
            Spacer()
                
                Button(action: {
                    
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    if playerRandom > cpuRandom {
                        playerScore += 1
                    }
                    else {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
            
                
            Spacer()
                
                HStack{
                    Spacer()
                    VStack {
                        Text("Player").font(.headline).padding()
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding()
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
