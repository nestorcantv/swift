//
//  ImagesTest.swift
//  Practica1
//
//  Created by mac on 29/04/22.
//

import SwiftUI
struct MyView: View{
    
    var body: some View{
        Text("Hola")
    }
}
struct ImagesTest: View {
    var body: some View {
        VStack{

            
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                
                print("Hola")
                
            }, label: {
                Image("turtlerock").resizable().aspectRatio(contentMode: .fit)
            })
            
        }
    }
}

struct ImagesTest_Previews: PreviewProvider {
    static var previews: some View {
        ImagesTest()
    }
}
