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
