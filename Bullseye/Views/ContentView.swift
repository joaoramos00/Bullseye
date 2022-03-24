//
//  ContentView.swift
//  Bullseye
//
//  Created by João Luis Ferreira Ramos Junior on 23/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var slideValue = 50.0
    @State private var game = Game()
    @State private var score = 0
    @State private var roundedValue = 0
    @State private var points = 0
    
    var body: some View {
        VStack{
        Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .lineSpacing(4.0)
                .font(.footnote)
                .multilineTextAlignment(.center)
            Text(String(game.target))
                .kerning(-1.0)
                .fontWeight(.black)
                .font(.largeTitle)
        HStack{
            Text("1")
                .bold()
            Slider(value: $slideValue, in: 1.0...100.0)
            Text("100")
                .bold()
        }
            Button("Hit me") {
                alertIsVisible = true
                roundedValue = Int(slideValue.rounded())
                points = game.points(slideValue: roundedValue)
                score = score + points
                
            }
            .alert("Hello there!", isPresented: $alertIsVisible) {
              Button("Awesome!") {
                  game.target = Int.random(in: 1...100)
              }
            } message: {
                Text("You hitted \(roundedValue)\n"
                     + "You scored \(points) points\n"
                     + "Your total score is \(score)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}

