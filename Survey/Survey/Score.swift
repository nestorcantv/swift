//
//  Score.swift
//  Survey
//
//  Created by mac on 02/05/22.
//

import SwiftUI

struct Score: View {
    
    @State var score1: Int = 0
    @State var score2 : Int = 0
    var body: some View {
       
        
        HStack{
            VStack{
            Text("Aciertos")
            Text("\(score1)")
            }
            VStack{
            Text("Malas")
            Text("\(score2)")
            }
            
        }
    }
}

struct Score_Previews: PreviewProvider {
    static var previews: some View {
        Score()
    }
}
