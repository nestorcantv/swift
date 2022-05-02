//
//  Navigations.swift
//  Practica1
//
//  Created by mac on 02/05/22.
//

import SwiftUI

struct Navigations: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Vista X").navigationTitle("Home").navigationBarTitleDisplayMode(.inline).toolbar(content: {
                    Button(action: {}, label: { Text("+")})
                })
                
                NavigationLink(destination: MapView(), label: {
                    Text("Another page to Mapview")
                })
            }
        }
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}
