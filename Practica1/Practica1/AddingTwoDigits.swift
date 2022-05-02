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
        TabView{
            ContentView().tabItem({
                Text("PageInfo")
                Image(systemName: "moon")
            })
            textModifier().tabItem({
                    Text("Modifiers")
                    Image(systemName: "moon")
                })
            
        }
    }
}

struct AddingTwoDigits_Previews: PreviewProvider {
    static var previews: some View {
        AddingTwoDigits()
    }
}
