import UIKit

class Vehicle{
    var currentSpeed = 0.0
    var description: String{
        return "Está viajando a \(currentSpeed) km/hr"
    }
    func makeNoise(){
        print("Mic mic!")
    }
}

class Bicycle: Vehicle {
    var hasBasket: Bool
    init(hasBasket: Bool){
        self.hasBasket = hasBasket
    }
}
class Motorcycle: Vehicle{
    var cc: Int
    var fuelCapacity: Int
    init(centímetrosCúbicos: Int,
         capacidadTanque: Int) {
        self.cc = centímetrosCúbicos
        self.fuelCapacity = capacidadTanque
    }
}
class Tandem: Bicycle{
    var numberOfSeats = 2
    override func makeNoise() {
        print("Lirum lirum")
    }
}

class Car: Vehicle{
    var currentGear = 1
    override var description: String{
        return super.description + " en \(currentGear) velocidad"
    }
}


var bicycle = Bicycle(hasBasket: false)
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
bicycle.description
var tandem = Tandem(hasBasket: false)
tandem.makeNoise()
var car1 = Car()
car1.description


class Survey{
    let text: String
    let correctAnswer: String
    var userAnswer: (String)->Bool?{
        return response(ans:)
    }
    
    func response(ans: String)-> Bool{
        return ans == self.correctAnswer ? true : false
    }
    
    init(question: String,
         answer: String){
        self.text = question
        self.correctAnswer = answer
    }

}
var q1 = Survey(question: "¿En que año fue la independencia de México?", answer: "1810")
q1.response(ans: "1810")
