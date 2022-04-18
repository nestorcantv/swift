import UIKit

/*
 Ejemplo de un closure
 {(parametros)->returnvalue in
 "Cuerpo del closure"
 return
 }
 */

var add = {(a: Int, b: Int)-> Int in return a + b }
var anotherAdd: (Int...)-> Int = {(numbers: Int...)-> Int in var finalNumb = 0 ; for num in numbers{finalNumb += num}; return finalNumb}
anotherAdd(5,5,5,10)

func makeIncrementer(mount: Int)-> ()-> Int{
    var runningTotal = 0
    func incremeneter()-> Int{
        runningTotal += mount
        return runningTotal
    }
    return incremeneter
}
var incrementerByTen = makeIncrementer(mount: 10)
incrementerByTen()
incrementerByTen()

func incrementWords(word: String)-> ()-> String{
    var finalWord = ""
    func addWord()-> String{
        finalWord += word
        return finalWord
    }
    return addWord
}


let manyHellos = incrementWords(word: "Hello")
manyHellos()
manyHellos()


var ageInDays: (Int)-> Int = {(age: Int)->Int in return age * 365 }

var nextInt: (Int)-> Int = {(a: Int)-> Int in return a + 1}
nextInt(6)



func countLetters (string: String, model: Character)->String{
    var letterCounter = 0
    var arrayOfCharacters = [Character]()
    
    func stringToCharacters (){
        for l in string {
            arrayOfCharacters.append(l)
        }
    }
    stringToCharacters()
    
    for l in  arrayOfCharacters{
        if l == model {
            letterCounter += 1
        }
    }
    return "La letra \(model) se repite \(letterCounter) veces"
}

countLetters(string: "hola como estaaaaaaaas? Qué has hecho?", model: "e")

var namesArray = ["Néstor", "Aurora", "Eliseo"]
namesArray += ["Zamira"]
func sortWords(_ s1: String, _ s2: String)-> Bool{
    return s1 < s2
}
var sortedNames = namesArray.sorted(by: {(s1: String, s2: String)->Bool in return s1 > s2})
sortedNames
