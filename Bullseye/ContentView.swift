//
//  ContentView.swift
//  Bullseye
//
//  Created by João Luis Ferreira Ramos Junior on 23/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
                .multilineTextAlignment(.center)
        Text("89")
        HStack{
            Text("1")
            Slider(value: .constant(50), in: 1.0...100.0)
            Text("100")
        }
            Button("Hit me") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
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

