import UIKit

func gretting(person: String, isMale: Bool)->String{
    let gret = (male: "Bienvenido!",female: "Bienvenida!")
    if isMale {
        return "Hola \(person). ¡\(gret.male)"
    } else{
        return "Hola \(person). ¡\(gret.female)"
    }
}
func gretting(){
    
}
gretting(person: "Néstor", isMale: true)
gretting(person: "Aurora", isMale: false)

func printAndCount(string: String)-> Int{
    print(string)
    return string.count
}

func printWithoutCounting(string: String){
    printAndCount(string: string)
}
printAndCount(string: "Hola")
printWithoutCounting(string: "Hola")


func minAndMax(array: [Int])-> (min: Int, max: Int){
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin {
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }

    }
    return (currentMin,currentMax)
}

print(minAndMax(array: [11,-2,3,4,5,6,8,12]))

func hola(person: String = "Usuario")-> String{
    return "Hola \(person)!"
}
hola(person: )

//Parámetro variádico. Puede tomar n parámetros
func manyHellos(names: String...){
    for n in names {
        print(n)
    }
}
manyHellos(names: "Hola", "Hello", "lola")

//Los parámetros de una función son de solo lectura a menos que utilizemos parámetros inout.
func swapTwoInts (_ a: inout Int, _ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}

var intA = 5
var intB = 6
print(intA,intB)
swapTwoInts(&intA, &intB)
print(intA,intB)


//Funciones como tipo de dato
func substractTwoInts(_ a: Int, _ b: Int)-> Int{
    return a - b
}
func addTwoInts(_ a: Int, _ b: Int)-> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int)-> Int{
    return a * b
}
var addFunction: (Int, Int)-> Int = addTwoInts
var substractFunction: (Int, Int)-> Int = substractTwoInts
var arrayFunctions: [(Int, Int)->Int] = [addFunction, substractFunction]
func printMathFunc(mathFunc: (Int,Int)-> Int, _ a: Int, _ b: Int){
    print(mathFunc(a,b))
}

printMathFunc(mathFunc: addFunction, 10, 10)
print(arrayFunctions[0])
var anotherAddFunction: (Int, Int)-> Int = arrayFunctions[0]
anotherAddFunction(5,6)

func addStepFunction(_ a: Int)-> Int{
    return a + 1
}
func subsStepFunction(_ a: Int)-> Int{
    return a - 1
}
func chooseStep(backward: Bool, value: inout Int)-> Int{
    return backward ? subsStepFunction(value) : addStepFunction(value)
}

var someInt = -5
var count = 0

while someInt != 0 && count < 10{
    count += 1
    someInt = chooseStep(backward: someInt > 0, value: &someInt)
    print(someInt)
}
