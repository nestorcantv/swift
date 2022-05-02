//
//  AddingTwoDigits.swift
//  Practica1
//
//  Created by mac on 29/04/22.
//

import SwiftUI

struct AddingTwoDigits: View {
    @State var texty = ""
    var body: some View {
        
        VStack{
            TabView{
                ImagesTest().tabItem({
                    Text("TabView")
                    Image(systemName: "turtlerock")
                })
            Text("Suma de dos Dígitos").font(.title).padding()
            HStack{
                Text(texty)
                Text("Digito 2")
            }
            TextField("Campo", text: $texty).font(.headline)
            
            }
        }
    }
}

struct AddingTwoDigits_Previews: PreviewProvider {
    static var previews: some View {
        AddingTwoDigits()
    }
}
