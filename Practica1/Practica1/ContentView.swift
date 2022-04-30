//
//  ContentView.swift
//  Practica1
//
//  Created by mac on 27/04/22.
//

import SwiftUI
var someText = "BOXHA KAL-LE"
struct ContentView: View {
    var body: some View {
        VStack{
            MapView().frame(height: 300)
            CircleImage().offset(y: -130).padding(.bottom, -130)
        VStack(alignment: .leading) {
            Text(someText)
                .font(.title)
            HStack {
                Text("Joshue Tree National Park").font(.subheadline)
                Spacer()
                Text("California").font(.subheadline)
            }
        }
        .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
