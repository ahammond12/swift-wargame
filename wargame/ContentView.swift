//
//  ContentView.swift
//  wargame
//
//  Created by Andy Hammond on 2021-08-30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card6"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        
        ZStack{
            Image("background")
            
           
            VStack{
                Spacer()
                Image("logo")
                
                Spacer()
                HStack(spacing: 12){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
            }
                .padding()
                Spacer()
                //deal button
                Button(action: {
                    
                   // Generate a random number between 2 and 13
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else {
                        cpuScore += 1
                    }
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // update player score
                    
                    
                    
                   
                }, label: {
                    Image("dealbutton")
                })
                
                
                Spacer()
                //player scores
                
                HStack {
                   Spacer()
                    VStack(spacing: 12){
                        Text("Player 1")
                            .font(.title)
                            .foregroundColor(.white)
                        Text(String(playerScore))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack(spacing: 12){
                        Text("CPU")
                            .font(.title)
                            .foregroundColor(.white)
                        Text(String(cpuScore))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    
                }
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
