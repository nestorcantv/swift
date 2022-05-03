//
//  ContentView.swift
//  Survey
//
//  Created by mac on 02/05/22.
//

import SwiftUI

struct ContentView: View {
    func StringToInt(s1: String, s2: String)->Int{
        if let num1 = Int(s1), let num2 = Int(s2){
            return math.addition(num1,num2)
        }else{
            return -1
        }
        
    }
    func setToCero(){
        playerAnswer = ""
        digit1 = String(Int.random(in: 1...10))
        digit2 = String(Int.random(in: 1...10))
        score1 = 0
        score2 = 0
    }
    
    var math = Math()

    
    
    
    @State var score1: Int = 0
    @State var score2 : Int = 0
    @State var score = Score()
    
    @State var digit1 : String = String(Int.random(in: 1...50))
    @State var digit2 : String = String(Int.random(in: 1...50))
    
    var resultString: String = "Tu respuesta"
    @State var playerAnswer: String = ""
    @State var isCorrect: String = ""
    var correctAnswer: String{
        String(StringToInt(s1: digit1, s2: digit2))
    }
    
   
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            HStack(alignment: .center) {
                Text(digit1)
                Text("+")
                Text(digit2)
            
            }.font(.title2)
            .frame(width: 400, height: 100)
            
            TextField("Tu respuesta", text: $playerAnswer).frame(width: 100, height: 50, alignment: .center)
            Button(action: {
                if playerAnswer == correctAnswer && !playerAnswer.isEmpty {isCorrect = "Respuesta Correcta"
                    playerAnswer = ""
                    digit1 = String(Int.random(in: 1...10))
                    digit2 = String(Int.random(in: 1...10))
                    score1 += 1
                    
                    
                }else if playerAnswer != correctAnswer && !playerAnswer.isEmpty{isCorrect = "Respuesta incorrecta"
                    playerAnswer = ""
                    digit1 = String(Int.random(in: 1...10))
                    digit2 = String(Int.random(in: 1...10))
                    score2 += 1
                }

            }, label:{ Image(systemName: "play")})
            Text(isCorrect)
            HStack {
                VStack{
                Text("Aciertos")
                Text("\(score1)")
                }
                VStack{
                Text("Malas")
                Text("\(score2)")
                }
                
                
            }.font(.title)
            Button(action: {
                setToCero()
            }, label: {
                Text("Reset")
            })
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
