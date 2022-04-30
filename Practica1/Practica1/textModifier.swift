//
//  textModifier.swift
//  Practica1
//
//  Created by mac on 28/04/22.
//

import SwiftUI

struct textModifier: View {
    
    var someText: [String] = ["Título", "Título22", "Tiitulo3"]
    @State var textToShow: String = "Título por default"
    @State var textHistory: String = ""

    func randomInt() -> Int{
        let random = Int.random(in: 0..<someText.count)
        return random
    }
    
    var body: some View {
        VStack {
            
            Text(textToShow).font(.title)
            
            
            Button(action: {
                let someInt: Int = randomInt()
                textToShow = someText[someInt]
                textHistory += textToShow + " "
            }, label: {
                Text("Cambiar Título")
                    .font(.title)
                .foregroundColor(Color.black).padding().frame(width: 300, height: 100, alignment: .center)
            })
            
            Text(textHistory).font(.subheadline).padding()
            
        }
    }
}

struct textModifier_Previews: PreviewProvider {
    static var previews: some View {
        textModifier()
    }
}
