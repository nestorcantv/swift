//
//  CircleImage.swift
//  Practica1
//
//  Created by mac on 28/04/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock").clipShape(Circle()).overlay{
            Circle().stroke(.white, lineWidth: 10)
        }.shadow(radius: 17)
    
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
