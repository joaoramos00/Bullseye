//
//  ContentView.swift
//  Bullseye
//
//  Created by João Luis Ferreira Ramos Junior on 23/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var slideValue: Double = 50.0
    @State private var game: Game = Game()
    
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
            Slider(value: self.$slideValue, in: 1.0...100.0)
            Text("100")
                .bold()
        }
            Button("Hit me") {
                self.alertIsVisible = true
            }
            .alert("Hello there!", isPresented: $alertIsVisible) {
              Button("Awesome!") {
              }
            } message: {
                let roundedValue: Int = Int(self.slideValue.rounded())
                Text("The slider value is \(roundedValue). \n"
                     + "You scored \(self.game.points(slideValue: roundedValue)) points")
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

